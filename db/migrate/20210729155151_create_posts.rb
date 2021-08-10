class CreatePosts < ActiveRecord::Migration[6.1]
    def change
      create_table :posts do |t|
        t.text :title
        t.integer :coming_from, default: 0
        t.text :body
        t.text :category
        t.text :abstract
        t.text :url
        t.integer :status, default: 0
        t.references :user, null: false, foreign_key: true
  
        t.timestamps
      end
    end
  end
  