class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :sender_account_no
      t.string :receiver_account_name
      t.boolean :transaction_type
      t.decimal :amount

      t.timestamps
    end
  end
end
