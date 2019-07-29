class FieldsController < ApplicationController

	def index
    @fields = current_user.fields.all
	end

	def show
		@field = Field.find(params[:id])
	end

	def new
		@field = Field.new
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
