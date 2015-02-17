class CustomPartsController < ApplicationController
	def new
		@custom_part = CustomPart.new
		@part = Part.find(params[:id])
	end
	
	private
		def part_params
			params.require(:part).permit(:category, :description)
			
		end
	end
end
