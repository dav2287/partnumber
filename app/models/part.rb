class Part < ActiveRecord::Base
	has_many :custom_parts
	validates :category, presence: true
	validates :description, presence: true
	before_save :assign_part_number

	private


	def assign_part_number
		self.part_number = Part.where(category: self.category).count + get_prefix() + 1
	end

	def get_prefix
		case self.category
		when 'custom'
			return 9000000
		when 'fastener'
			return 4000000
		when 'oem'
			return 5000000
		when 'assembly'
			return 6000000
		when 'pneumatic'
			return 2000000
		when 'electrical'
			return 3000000
		else
			return 1000000
		end
	end

end
