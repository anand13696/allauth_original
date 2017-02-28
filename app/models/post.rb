class Post < ApplicationRecord
	has_many :taggings 
	has_many :tags, through: :taggings 
	belongs_to :user
	acts_as_votable

	# for friendly-id
	extend FriendlyId
	friendly_id :title, use: :slugged


	def self.search(search)
		where("title LIKE ?", "%#{search}%")
	end

	# for prev and next button
 	def next
    	self.class.where("id > ?", id).first
  	end
  	def previous
    	self.class.where("id < ?", id).last
  	end

  	# for tags
  	def tag_list
  		self.tags.collect do |tag|
    		tag.name
  		end.join(", ")
	end

	def tag_list=(tags_string)
  		tag_names = tags_string.split(",").collect{|s| s.strip.capitalize}.uniq
  		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  		tag_names.each do |tag|
  			@tag = Tag.find_by(name: tag)
  			@tag.posts_count += 1
  			@tag.save!
  		end
  		self.tags = new_or_found_tags
	end

end
