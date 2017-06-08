class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :transactions, :dependent => :nullify
  validates :username, :presence => true
  validates :username, :uniqueness => { :scope => [:ssn] }
  validates :ssn, :presence => true
  validates :ssn, :uniqueness => true
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :date_of_birth, :presence => true
  validates :address, :presence => true
end
