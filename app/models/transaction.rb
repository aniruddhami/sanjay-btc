class Transaction < ApplicationRecord
	User.primary_key = :account_no 
	belongs_to :user, :foreign_key => 'account_no'
	validate :validate_on_create

		def validate_on_create
		    if (self.receiver_account_no == self.account_no)
		      errors.add(:account_no, "Not same as your Account number")
		    end
	  end
	 
end
