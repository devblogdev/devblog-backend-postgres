class ChangeBioToBeJsonbInUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :bio, :jsonb, default: '{}', using: 'bio::jsonb'
    change_column_null :users, :bio, false
  end

  def down
    change_column :users, :bio, :text
  end
end
