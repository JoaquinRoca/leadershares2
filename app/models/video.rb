class Video < ActiveRecord::Base
  attr_accessible :interviewee, :title, :url
  has_and_belongs_to_many :competencies

  validates :title, presence: true

end
