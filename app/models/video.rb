class Video < ActiveRecord::Base
  belongs_to :user
  # before_save :fix_url

#   def fix_url(url)
#   half_url = url.split("=")[1]
#   new_url = "http://www.youtube.com/v/#{half_url}"
#    # self.url  = new_url
#    # self.save
#    return new_url
#   end
end
