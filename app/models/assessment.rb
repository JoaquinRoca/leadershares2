class Assessment < ActiveRecord::Base
  attr_accessible :competency, :name, :question

  validates :name, presence: true
end
