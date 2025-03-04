class User < ApplicationRecord
    has_secure_password
    has_many :posts, -> { includes(:images).order("posts.created_at desc") }, dependent: :destroy  
    # Warning: changing the alias name 'images' will break the client-side code which relies on 'user.images' and not on 'user.user_images'
    has_many :images, foreign_key: "user_id", class_name: "UserImage", dependent: :destroy
    accepts_nested_attributes_for :images

    validates :password, presence: true, on: :create, length: { minimum: 6, on: :create }
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    validates :email, uniqueness: true, on: :create

    # Validate the presence of first name and last name as they will be used in creating the user's posts url slug
    validates :first_name, presence: true, on: :create
    validates :last_name, presence: true, on: :create

    before_validation { self.email = email.downcase }
    # before_create :confirmation_token

    scope :has_published_posts, -> { includes(:posts).joins(:posts).where("posts.status = ?", 1).order("posts.created_at desc") }

    def self.create_with_username(params)
        fullname = "#{params[:first_name]} #{params[:last_name]}"
        username = UserManager::UsernameCreator.call(fullname)
        user = User.new(params.merge(username: username))
        user.confirmation_token
        begin
            user.save
        rescue ActiveRecord::RecordNotUnique => e
            # if user.errors.details[:username].any? { |h| h[:error] == :taken }
            # Generate a new username until the username is unique 
            return self.create_with_username(params)
        end
        user 
    end

    def self.from_omniauth(user_data)
        user = self.find_by(email: user_data["email"])   
        # If the user regisered via normal sign up, confirmed email, and then tries to register via OAuth using the same email, skip the OAuth process
        return user if user && user.email_confirmed
        # This line prevents the user from confirming email via normal sign up if user creates account via OAth and then tries to confirm email via normal sign up
        user.delete if user && !user.email_confirmed     
        fullname = user_data['name']
        begin
            user = self.find_or_create_by(provider: user_data["provider"], uid: user_data["sub"]) do |u|
                u.email = user_data["email"]
                u.first_name = user_data['given_name']
                u.last_name = user_data['family_name']
                u.password = SecureRandom.hex(20)
                u.email_confirmed = true
                u.username = UserManager::UsernameCreator.call(fullname)
            end
        rescue ActiveRecord::RecordNotUnique => e
            # Generate a new username until the username is unique 
            return self.from_omniauth(user_data)
        end
        user.images.create(url: user_data["picture"]) if user.images.blank? 
        user
    end
    
    def full_name
     "#{self.first_name}" + " #{self.last_name}"
    end

    def confirmation_token
        if self.confirm_token.blank?
            self.confirm_token = SecureRandom.urlsafe_base64.to_s
        end
    end

    def email_activate
        self.email_confirmed = true
        self.confirm_token = nil
        save!(:validate => false)
    end

end
