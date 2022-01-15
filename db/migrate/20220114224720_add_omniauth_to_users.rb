class AddOmniauthToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :uid, :text
    add_column :users, :provider, :text
    add_column :users, :access_token, :text
    add_column :users, :refresh_token, :text
  end

  def down
    remove_column :users, :uid, :text
    remove_column :users, :provider, :text
    remove_column :users, :access_token, :text
    remove_column :users, :refresh_token, :text
  end
  
end
