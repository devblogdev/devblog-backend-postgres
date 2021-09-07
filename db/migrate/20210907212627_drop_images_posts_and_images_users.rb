class DropImagesPostsAndImagesUsers < ActiveRecord::Migration[6.1]
  def change
    drop_table :images_posts
    drop_table :images_users
  end
end
