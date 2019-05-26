class PagesController < ApplicationController
  def user_view
  	#fetch all transaction of logined use    
   @transactions = Transaction.where('account_no = ? ', current_user.account_no).order("created_at DESC").limit(5)
   @transactions_all = Transaction.where('account_no = ? ', current_user.account_no).order("created_at DESC")
  end
end
