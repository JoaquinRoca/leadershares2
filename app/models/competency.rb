class Competency < ActiveRecord::Base
  attr_accessible :title
  has_and_belongs_to_many :videos
  has_and_belongs_to_many :questions

  validates :title, presence: true

end
