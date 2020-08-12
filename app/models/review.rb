class Review < ApplicationRecord
	belongs_to :restaurant
	NUM = (0..5)

	validates :content, :rating, presence: true
	validates :rating, numericality: { only_integer: true }
	validates :rating, :inclusion => { in: NUM }
end
