class Month < ActiveRecord::Base
	has_many :expenses
	has_many :incomes
	validates :name, presence: true
end
