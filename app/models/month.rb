class Month < ActiveRecord::Base
	has_many :expenses
	has_many :incomes
	validates :name, presence: true

	# accepts_nested_attributes_for :expenses
	# accepts_nested_attributes_for :incomes
end
