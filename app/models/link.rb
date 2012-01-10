class Link < ActiveRecord::Base
	has_and_belongs_to_many :divisions
	belongs_to :category
	mount_uploader  :cover, CoverUploader

	validates :name, presence: true, uniqueness: true

	before_create :increase_order

	private
	def increase_order
		self.order = self.id
	end
end
