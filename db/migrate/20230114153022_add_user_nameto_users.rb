class AddUserNametoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string, null: false
  end
end
