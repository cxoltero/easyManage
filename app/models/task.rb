class Task < ActiveRecord::Base
  belongs_to :tasklist
  validates :name, presence: true
end
