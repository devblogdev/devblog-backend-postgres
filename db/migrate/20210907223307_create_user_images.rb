class CreateUserImages < ActiveRecord::Migration[6.1]
  def change
    create_table :user_images do |t|
      t.text :url
      t.text :caption
      t.text :alt
      t.text :format
      t.text :name
      t.integer :size
      t.text :s3key
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
