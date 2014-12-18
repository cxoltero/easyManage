class ExpensesController < ApplicationController
	def create
		@month = Month.find(params[:month_id])
		@expense = @month.expenses.create(params[:expense].permit(:amount, :to, :duedate))
		redirect_to month_path(@month)
	end

	def destroy
		@month = Month.find(params[:month_id])
		@expense = @month.expenses.find(params[:id])
		@expense.destroy
		redirect_to month_path(@month), notice: "Succesfully deleted month!"
	end
end
