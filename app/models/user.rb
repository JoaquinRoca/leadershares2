class User < ActiveRecord::Base
  attr_accessible :admin, :email, :first, :interviewee, :last, :password, :rememberToken

  validates :email, presence: true

end
