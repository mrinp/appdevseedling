class Transaction < ApplicationRecord

belongs_to :user, :class_name => "User", :foreign_key => "user_id"
belongs_to :lottery, :class_name => "lotteries", :foreign_key => "transactions_id", :required => false

end
