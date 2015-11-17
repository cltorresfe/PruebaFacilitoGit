class Category < ActiveRecord::Base
	validates :name, presence: true

	# Category - HasCategory - Article. Para llegar a category se necesita pasar por has_category
	#para llegar a article.
	has_many :has_categories
	has_many :articles, through: :has_categories
end

