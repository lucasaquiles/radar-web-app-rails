class WishProgress < ApplicationRecord

	belongs_to :wish
	has_one :relevance
end
