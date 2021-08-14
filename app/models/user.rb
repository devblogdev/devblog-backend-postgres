class User < ApplicationRecord
    has_secure_password
    has_many :posts
    validates_presence_of :password, on: :create
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    
end
