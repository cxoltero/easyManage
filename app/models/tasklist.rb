class Tasklist < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
    validates :title, presence: true
    validates :description, presence: true
    validates :due_date,presence: true
end
