class Forum < ApplicationRecord
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: :slugged

	def self.search(search)
		where("title LIKE ?", "%#{search}%")
	end
end
