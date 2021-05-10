class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tzid, :string
    add_column :users, :access_token, :string
    add_column :users, :refresh_token, :string
  end
end
