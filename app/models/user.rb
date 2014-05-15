class User < ActiveRecord::Base

  has_many :influences
  has_many :videos
  has_many :movies
  has_many :fav_videos

  has_secure_password

end
