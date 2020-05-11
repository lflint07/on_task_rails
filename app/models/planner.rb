class Planner < ApplicationRecord
  belongs_to :user
  has_many :notes
  has_many :tasks
end
