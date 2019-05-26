json.extract! transaction, :id, :sender_account_no, :receiver_account_name, :transaction_type, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
