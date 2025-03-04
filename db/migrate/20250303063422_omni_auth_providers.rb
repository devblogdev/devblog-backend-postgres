class OmniAuthProviders < ActiveRecord::Migration[7.2]
  def change
    create_table :omni_auth_providers do |t|
      t.text :provider
      t.text :public_keys
      t.integer :expires

      t.timestamps
    end
  end
end
