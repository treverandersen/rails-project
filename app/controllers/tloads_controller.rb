class TloadsController < ApplicationController

	def index
    @tloads = current_user.tloads.all
	end

	def show
		@tload = Tload.find(params[:id])
	end

	def new
		@tload = Tload.new
	end

	def edit
		@tload = Tload.find(params[:id])
	end

	def create
    @tload = current_user.tloads.build(tload_params)
    if @tload.save
      flash[:message] = "Successfully created a new load!"
			redirect_to tload_path(@tload)
    else
      render :new
    end
	end

	def update
		@tload = Tload.find(params[:id])

		if @tload.update(tload_params)
			redirect_to @tload
		else
			render :edit
		end
	end

	def destroy
		@tload = Tload.find(params[:id])
		@tload.destroy

		redirect_to tloads_path
	end

	private

	def tload_params
		params.require(:tload).permit(:load_full, :load_empty, :net_weight, :crop, :moisture, :wet_bushels, :dry_bushels, :in_out, :bin_id, :field_id, :driver_id)
	end

end
