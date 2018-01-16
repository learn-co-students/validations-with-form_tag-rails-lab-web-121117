class Post < ActiveRecord::Base
  validates :title, presence: true
  # title is not blank

  validates :content, length: {minimum: 100}
  #content length

  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  #category is either "Fiction" or "Non-Fiction"
end
