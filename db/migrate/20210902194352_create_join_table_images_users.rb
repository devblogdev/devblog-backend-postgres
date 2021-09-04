class CreateJoinTableImagesUsers < ActiveRecord::Migration[6.1]
    def change
      create_join_table :images, :users do |t|
        t.index [:image_id, :user_id]
        t.index [:user_id, :image_id]
      end
    end
end