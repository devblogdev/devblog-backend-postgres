class AddForeignKeyToImages < ActiveRecord::Migration[6.1]
  def change
    add_reference :images, :post, null: false, foreign_key: true
  end
end