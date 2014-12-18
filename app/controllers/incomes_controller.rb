class IncomeController < ApplicationController
	def create
		@month = Month.find(params[:month_id])
		@income = @month.incomes.create(params[:income].permit(:name, :amount))
		redirect_to month_path(@month)
	end

	def destroy
		@month = Month.find(params[:month_id])
		@income = @month.incomes.find(params[:id])
		@income.destroy
		redirect_to month_index_path, notice: "Succesfully deleted month!"
	end
end
