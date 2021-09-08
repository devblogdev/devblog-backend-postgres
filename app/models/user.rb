class User < ApplicationRecord
    has_secure_password
    # has_many :posts
    has_many :posts, -> { includes(:images) }
    # has_and_belongs_to_many :images, join_table: 'images_users'

    # has_many :user_images, dependent: :destroy
    # has_many :images, through: :user_images

    # Warning: changing the alias name 'images' will break the client-side code which relies on 'user.images' and not on 'user.user_images'
    has_many :images, foreign_key: "user_id", class_name: "UserImage", dependent: :destroy

    accepts_nested_attributes_for :images

  

    validates :password, presence: true, on: :create, length: { minimum: 5, on: :create }
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    validates :email, uniqueness: true, on: :create

    before_validation { self.email = email.downcase }

    serialize :bio, Hash

    scope :has_published_posts, -> { includes(:posts).joins(:posts).where("posts.status = ?", 1)}
    # scope :has_published_posts, -> { joins(:posts).where("posts.status = ?", 1).distinct}
    def draft_posts
        self.posts.where("status = ?", 0)
    end

end
