class AddReceiverAccountNo < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :receiver_account_no, :string
  end
end
