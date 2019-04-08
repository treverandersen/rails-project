class BinsController < ApplicationController
	# place the standard CRUD actions in the following order: index, show, new, create, update, and destroy

	def index
		@bins = Bin.all
	end

	def show
		@bin = Bin.find(params[:id])
	end

	def new
		@bin = Bin.new
	end

	def create
		@bin = Bin.new(bin_params)

		if @bin.valid?
			@bin.save
			redirect_to bin_path(@bin)
		else
			render :new 
		end
	end

	private

	def bin_params
		params.require(:bin).permit(:name, :bushel_capacity)
	end

end
