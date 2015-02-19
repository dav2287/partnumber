class PartsController < ApplicationController
	def index
		@parts = Part.search(params[:search])
	end

	def show
		@part = Part.find(params[:id])
	end

	def new
		@part = Part.new
	end

	def edit
		@part = Part.find(params[:id])
	end

	def create
		@part = Part.new(part_params)
		if @part.save
			redirect_to @part
		else
			render 'new'
		end
	end

	def update
		@part = Part.find(params[:id])

		if @part.update(part_params)
			redirect_to @part
		else
			render 'edit'
		end
	end

	def destroy
		@part = Part.find(params[:id])
		@part.destroy

		redirect_to parts_path
	end

	private
		def part_params
			params.require(:part).permit(:category, :description, :material, :part_number)
			
		end
end
