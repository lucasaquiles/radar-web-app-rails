class Wish < ApplicationRecord

	belongs_to :user
	has_many :wish_progress, dependent: :destroy
end
