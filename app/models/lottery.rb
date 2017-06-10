class Lottery < ApplicationRecord

  has_many :transactions
  has_many :users, :through => :transactions
  validates :raffle_number, :uniqueness => true
end
