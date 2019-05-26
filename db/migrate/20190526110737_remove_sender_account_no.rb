class RemoveSenderAccountNo < ActiveRecord::Migration[5.1]
  def change
  	remove_column :transactions, :sender_account_no
  	remove_column :transactions, :receiver_account_name
  	 add_column :transactions, :account_id, :string
  end
end
