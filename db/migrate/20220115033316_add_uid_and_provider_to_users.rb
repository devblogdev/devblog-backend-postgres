class AddUidAndProviderToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :uid, :text
    add_column :users, :provider, :text
  end

  def down
    remove_column :users, :uid, :text
    remove_column :users, :provider, :text
  end
end
