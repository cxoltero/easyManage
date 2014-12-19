class MonthsController < ApplicationController
	before_action :find_month, only: [:show, :edit, :update, :destroy]

	def index
		@months= Month.all.order("created_at DESC")
	end
	
	def show
	end
	
	def new
		@month = Month.new
	end


	def create
		@month = Month.new(month_params)
		if 	@month.save
			redirect_to @month, notice: "Succesfully created new Month"
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @month.update(month_params)
			redirect_to @month
		else
			render 'edit'
		end
	end

	def destroy
		@month.destroy
		redirect_to months_path, notice: "Succesfully deleted Month!"
	end


	private
	def find_month
		@month = Month.find(params[:id])
	end

	def month_params
		params.require(:month).permit(:name)
	end
end

