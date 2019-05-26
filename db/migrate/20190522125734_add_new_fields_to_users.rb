class AddNewFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :mobile, :string
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :addhar, :string
    add_column :users, :pan, :string
end
end
