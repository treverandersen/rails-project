class DriversController < ApplicationController

	def index
    if params[:bin_id] && bin = Bin.find_by_id(params[:bin_id])
      @drivers = Driver.all_drivers_for_bin(bin.id)
    else
      @drivers = current_user.drivers.all
    end
	end

	def show
		@driver = Driver.find(params[:id])
	end

	def new
		@driver = Driver.new
	end

	def edit
		@driver = Driver.find(params[:id])
	end

	def create
    @driver = current_user.drivers.build(driver_params)
		if @driver.save
      flash[:message] = "Successfully created a new driver!"
			redirect_to driver_path(@driver)
		else
			render :new 
		end
	end

	def update
		@driver = Driver.find(params[:id])

		if @driver.update(driver_params)
			redirect_to @driver
		else
			render :edit
		end
	end

	def destroy
		@driver = Driver.find(params[:id])
		@driver.destroy

		redirect_to drivers_path
	end

	private

	def driver_params
		params.require(:driver).permit(:name)
	end

end
