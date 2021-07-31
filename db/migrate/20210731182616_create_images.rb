class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.text :url
      t.string :caption
      t.string :alt
      t.string :format

      t.timestamps
    end
  end
end
