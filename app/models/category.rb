class Category < ActiveRecord::Base
	has_many :groups, :class_name => "Category"
	has_many :links

	validates :name, presence: true, uniqueness: true

	before_create :increase_order

	private
	def increase_order
		self.order = self.id
	end
end
