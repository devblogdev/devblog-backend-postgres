class Image < ApplicationRecord
  # has_and_belongs_to_many :posts, join_table: 'images_posts'
  # has_and_belongs_to_many :users, join_table: 'images_users'

  # has_many :post_images
  # has_many :posts, through: :post_images
  # has_many :user_images
  # has_many :users, through: :user_images

  # belongs_to :post
  
end
