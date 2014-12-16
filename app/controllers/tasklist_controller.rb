class TasklistController < ApplicationController
		before_action :find_tasklist, only: [:show, :edit, :update, :destroy]

	def index
		@tasklists= Tasklist.all
	end
	def show
	end
	def new
	end

	def create
		@tasklist = Tasklist.new(tasklist_params)
		if 	@tasklist.save
			redirect_to @tasklist, notice: "Succesfully created new list"
		else
			render 'new'
		end
	end

	private
	def find_tasklist
		@tasklist = Tasklist.find(params[:id])
	end

	def tasklist_params
		params.require(:tasklist).permit(:title)
	end
end
