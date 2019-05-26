class AddMNameFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :m_name, :string
  end
end
