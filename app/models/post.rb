class Post < ActiveRecord::Base

  validates :title, :excerpt, :body, :image_url, presence: true

end
