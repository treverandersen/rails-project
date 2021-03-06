class FieldsController < ApplicationController

	def index
    if params[:bin_id] && bin = Bin.find_by_id(params[:bin_id])
      @fields = Field.all_fields_for_bin(bin.id)
    else
      @fields = current_user.fields.all
    end
	end

	def show
		@field = Field.find(params[:id])
    @total_dry_bushels = Field.total_dry_bushels(@field.id)
    @total_wet_bushels = Field.total_wet_bushels(@field.id)
	end

	def new
    if params[:field_id] && @field = Field.find_by_id(params[:field_id])
      @field = @tload.fields.build
    else
		  @field = Field.new
    end
	end

	def edit
		@field = Field.find(params[:id])
	end

	def create
    @field = current_user.fields.build(field_params)

		if @field.save
      flash[:message] = "Successfully created a new field!"
			redirect_to field_path(@field)
		else
			render :new 
		end
	end

	def update
		@field = Field.find(params[:id])

		if @field.update(field_params)
			redirect_to @field
		else
			render :edit
		end
	end

	def destroy
		@field = Field.find(params[:id])
		@field.destroy

		redirect_to fields_path
	end

	private

	def field_params
		params.require(:field).permit(:name, :acres)
	end

end
