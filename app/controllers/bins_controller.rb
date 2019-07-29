class BinsController < ApplicationController

	def index
    @bins = current_user.bins.all
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
    @bin = current_user.bins.build(bin_params)
		if @bin.save
      flash[:message] = "Successfully created a new bin!"
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
