class Wish < ApplicationRecord

	belongs_to :user
	has_many :goal, dependent: :destroy
end
