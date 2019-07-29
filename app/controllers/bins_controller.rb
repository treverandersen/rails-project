class BinsController < ApplicationController

	def index
    @bins = Bin.all
	end

	def show
    @bin = Bin.find(params[:id])
	end

	def new
    @bin = Bin.new
	end

	def edit
		@bin = Bin.find(params[:id])
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

	def update
		@bin = Bin.find(params[:id])

		if @bin.update(bin_params)
			redirect_to @bin
		else
			render :edit
		end
	end

	def destroy
		@bin = Bin.find(params[:id])
		@bin.destroy

		redirect_to bins_path
	end

	private

	def bin_params
		params.require(:bin).permit(:name, :bushel_capacity)
	end

end
