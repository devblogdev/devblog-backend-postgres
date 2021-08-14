class User < ApplicationRecord
    has_secure_password
    has_many :posts
    # validates :name, :last_name, presence: true, format: { with: /[^a-zA-Z -]/, on: :create}
    validates_presence_of :password, on: :create
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    # Below line uses the 'email_validator' gem; not used in this app
    # validates :email, email: {mode: :strict}
end
