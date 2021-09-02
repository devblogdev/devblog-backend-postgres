class User < ApplicationRecord
    has_secure_password
    has_many :posts
    validates :password, presence: true, length: { minimum: 5, on: :create }
    # Below line uses the 'valid_email2' gem
    validates :email, presence: true, 'valid_email_2/email': { mx: true, on: :create }
    validates :email, uniqueness: true, on: :create

    before_validation { self.email = email.downcase }

    scope :has_published_posts, -> { includes(:posts).joins(:posts).where("posts.status = ?", 1)}
    # scope :has_published_posts, -> { joins(:posts).where("posts.status = ?", 1).distinct}

end
