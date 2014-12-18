class Expense < ActiveRecord::Base
	belongs_to :month
	validates :name, :amount, presence: true
end
