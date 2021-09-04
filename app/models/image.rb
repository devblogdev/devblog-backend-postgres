class Image < ApplicationRecord
  has_and_belongs_to_many :posts, join_table: 'images_posts'
  has_and_belongs_to_many :users, join_table: 'images_users'
  
end
