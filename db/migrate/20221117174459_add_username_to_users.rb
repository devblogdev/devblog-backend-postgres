class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :username, :text
    add_index :users, :username, unique: true
  end

  def down
    remove_column :users, :username, :text
    remove_index :users, :username, unique: true
  end
end
