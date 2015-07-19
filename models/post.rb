class Post < ActiveRecord::Base
  #will only allow new posts to have titles of minimum one character length
  validates :title, presence: true, length: { minimum: 1 }
end