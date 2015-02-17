class Part < ActiveRecord::Base
	has_many :custom_parts
	validates :category, presence: true
	validates :description, presence: true
end
