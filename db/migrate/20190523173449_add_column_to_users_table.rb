class AddColumnToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :password_digest, :integer
  end
end
