class RenameAccountId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :transactions, :account_id, :account_no
  end
end
