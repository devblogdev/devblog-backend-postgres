class AddAuthorNameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :author_name, :text
  end
end
