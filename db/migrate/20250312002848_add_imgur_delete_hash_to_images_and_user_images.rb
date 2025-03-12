class AddImgurDeleteHashToImagesAndUserImages < ActiveRecord::Migration[7.2]
  def change
    add_column :images, :imgur_delete_hash, :text
    add_column :user_images, :imgur_delete_hash, :text
  end
end
