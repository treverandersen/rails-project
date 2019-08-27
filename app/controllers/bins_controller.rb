class BinsController < ApplicationController

	def index
    @bins = current_user.bins.all
	end

	def show
    @bin = Bin.find(params[:id])
    @total_dry_bushels = Bin.total_dry_bushels(@bin.id)
    @total_wet_bushels = Bin.total_wet_bushels(@bin.id)
    @current_level = @total_dry_bushels.to_f / @bin.bushel_capacity.to_f 
    @current_level = @current_level * 100
    @current_level = @current_level.round
	end

	def new
    if params[:bin_id] && bin = Bin.find_by_id(params[:bin_id])
      @bin = @tload.bins.build
    else
      @bin = Bin.new
    end
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
