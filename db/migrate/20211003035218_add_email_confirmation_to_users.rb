class AddEmailConfirmationToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :email_confirmed, :boolean, :default => false
    add_column :users, :confirm_token, :text
  end

  def down
    remove_column :users, :email_confirmed, :boolean
    remove_column :users, :confirm_token, :text
  end
end
