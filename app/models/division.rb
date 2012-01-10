class Division < ActiveRecord::Base
	has_and_belongs_to_many :links

	validates :name, presence: true, uniqueness: true

	before_create :increase_order

	private
	def increase_order
		self.order = self.id
	end
end
