class AddToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_no, :string
  end
end
