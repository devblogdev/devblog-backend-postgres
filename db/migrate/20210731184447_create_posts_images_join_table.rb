class CreatePostsImagesJoinTable < ActiveRecord::Migration[6.1]
    def change
      create_join_table :posts, :images do |t|
        t.index [:post_id, :image_id]
        t.index [:image_id, :post_id]
    end
  end
end
