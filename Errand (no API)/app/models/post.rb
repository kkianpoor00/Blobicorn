class Post < ApplicationRecord
	belongs_to :category
	belongs_to :service
	belongs_to :location
	validates_presence_of :title
end
