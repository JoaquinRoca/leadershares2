class Video < ActiveRecord::Base
  attr_accessible :interviewee, :title, :url

  validates :title, presence: true

end
