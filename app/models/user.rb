class User < ApplicationRecord
    has_secure_password
    has_many :posts, -> { includes(:images).order("posts.created_at desc") }, dependent: :destroy  
    # Warning: changing the alias name 'images' will break the client-side code which relies on 'user.images' and not on 'user.user_images'
    has_many :images, foreign_key: "user_id", class_name: "UserImage", dependent: :destroy
    accepts_nested_attributes_for :images

    validates :password, presence: true, on: :create, length: { minimum: 5, on: :create }
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    validates :email, uniqueness: true, on: :create

    before_validation { self.email = email.downcase }
    # before_create :confirmation_token

    
    scope :has_published_posts, -> { includes(:posts).joins(:posts).where("posts.status = ?", 1).order("posts.created_at desc") }

    def self.from_omniauth(auth_frontend)
        # self.find_or_create_by(provider: auth_frontend["provider"], uid: auth_frontend["uid"]) do |u|
        user = self.find_or_create_by(email: auth_frontend["email"]) do |u|
        #   u.email = auth_frontend["email"]
          u.first_name = auth_frontend['first_name']
          u.last_name = auth_frontend['last_name']
          u.password = SecureRandom.hex(20)
          u.email_confirmed = true
        end
        user.images.create(url: auth_frontend["profile_image"])
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
