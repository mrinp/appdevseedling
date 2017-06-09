class Transaction < ApplicationRecord

belongs_to :user, :class_name => "User", :foreign_key => "user_id"
belongs_to :lottery, :class_name => "lotteries", :foreign_key => "transactions_id", :required => false

validates :amount, :numericality => { :less_than_or_equal_to => 25, :greater_than_or_equal_to => 5, :odd => true }
validates :amount, :presence => true
validates :date, :presence => true

end
