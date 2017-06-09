class Lottery < ApplicationRecord

  has_many :transactions 
  has_many :users, :class_name => "User", :foreign_key => "user_id"
  validates :raffle_number, :uniqueness => true
end
