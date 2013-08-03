class Question < ActiveRecord::Base
  attr_accessible :title
  has_and_belongs_to_many :competencies
  
  validates :title, presence: true

end
