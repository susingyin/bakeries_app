class Product < ActiveRecord::Base

	has_many :reviews, dependent: :destroy

	validates :title, presence: true,
						length: { minimum: 5 }

	belongs_to :user

	def self.search_for(query)
		where('title LIKE :query or category LIKE :query', query: "%#{query}%")
	end

end
