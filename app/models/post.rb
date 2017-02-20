class Post < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged

	def self.search(search)
		where("title LIKE ?", "%#{search}%")
	end

 	def next
    	self.class.where("id > ?", id).first
  	end

  	def previous
    	self.class.where("id < ?", id).last
  	end
end
