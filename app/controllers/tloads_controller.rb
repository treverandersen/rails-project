class TloadsController < ApplicationController

  def index
    if params[:bin_id] && bin = Bin.find_by_id(params[:bin_id])
      @tloads = Tload.all_loads_for_bin(bin.id)
    elsif params[:driver_id] && driver = Driver.find_by_id(params[:driver_id])
      @tloads = Tload.all_loads_for_driver(driver.id)
    elsif params[:field_id] && field = Field.find_by_id(params[:field_id])
      @tloads = Tload.all_loads_for_field(field.id)
    else
      @tloads = current_user.tloads.all
    end
  end

	def show
		@tload = Tload.find(params[:id])
	end

	def new
    if params[:driver_id] && driver = Driver.find_by_id(params[:driver_id])
      @tload = driver.tloads.build
    elsif params[:field_id] && field = Field.find_by_id(params[:field_id])
      @tload = field.tloads.build
    elsif params[:bin_id] && bin = Bin.find_by_id(params[:bin_id])
      @tload = bin.tloads.build
    else
		  @tload = Tload.new
    end
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
