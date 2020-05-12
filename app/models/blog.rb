class Blog < ApplicationRecord

	# Blog Post Status Enum
	enum status: {draft: 0, published: 1}


	# Implement Friendly Slugs for Blogs
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates_presence_of :title, :body

	
end
