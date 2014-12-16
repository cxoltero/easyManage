class Tasklist < ActiveRecord::Base
	validates :title, presence: true
end
