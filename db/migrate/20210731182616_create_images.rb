class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.text :url
      t.text :caption
      t.text :alt
      t.text :format
      t.text :name
      t.integer :size
      t.text :s3key

      t.timestamps
    end
  end
end
