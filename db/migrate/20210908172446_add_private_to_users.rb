class AddPrivateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :private, :jsonb, null: false, default: '{}'
  end
end
