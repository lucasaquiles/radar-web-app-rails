class Goal < ApplicationRecord

	belongs_to :wish
	has_many :wish_progress, dependent: :destroy
end
