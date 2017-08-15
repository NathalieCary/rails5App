class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  #added a scope code to select a specific group of data entries for best ratings
	scope :rating_desc, -> { order(rating: :desc) }
	scope :rating_asc, ->{ order(rating: :asc) }

end
