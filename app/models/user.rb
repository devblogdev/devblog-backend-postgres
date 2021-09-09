class User < ApplicationRecord
    has_secure_password
    has_many :posts, -> { includes(:images) }
    # Warning: changing the alias name 'images' will break the client-side code which relies on 'user.images' and not on 'user.user_images'
    has_many :images, foreign_key: "user_id", class_name: "UserImage", dependent: :destroy
    accepts_nested_attributes_for :images

    validates :password, presence: true, on: :create, length: { minimum: 5, on: :create }
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    validates :email, uniqueness: true, on: :create

    before_validation { self.email = email.downcase }

    scope :has_published_posts, -> { includes(:posts).joins(:posts).where("posts.status = ?", 1)}
  
    def drafts
        self.posts.where("status = ?", 0)
    end

end
