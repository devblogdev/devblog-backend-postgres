class ApplicationController < ActionController::API
    before_action :authorized
    
    # This API uses JWT for user authentication
    # The below 'encode_token' method is used to generate a json web token
    # It is used in create action of users_controller to create a jwt when a user signs up
    # It is used in create action of auth_controller to create a jwt when a user logs in
    # The 'payload' argument is a has with 'user_id' as the key and the user id from the database as the value
    def encode_token(payload)
        JWT.encode(payload, 'secret', 'HS256')
    end

    def author_header        
        request.headers["Authorization"]
    end

    def decoded_token
        if author_header
            token = author_header.split(" ")[1]
            begin 
                JWT.decode(token, 'secret', algorithm: 'HS256')
            rescue JWT::DecodeError
            # rescue JWT::ExpiredSignature
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: {message: 'Please log in '}, status: :unauthorized unless logged_in?
    end

end
