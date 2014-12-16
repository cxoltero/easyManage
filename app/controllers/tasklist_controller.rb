class TasklistController < ApplicationController
		before_action :find_tasklist, only: [:show, :edit, :update, :destroy]

	def index
		@tasklists= Tasklist.all.order("created_at DESC")
	end
	
	def show
	end
	
	def new
		@tasklist = Tasklist.new
	end


	def create
		@tasklist = Tasklist.new(tasklist_params)
		if 	@tasklist.save
			redirect_to @tasklist, notice: "Succesfully created new list"
		else
			render 'new'
		end
	end

	def edit
		@tasklist = Tasklist.find(params[:id])
	end

	def update
		if @tasklist.update(tasklist_params)
			redirect_to @tasklist
		else
			render 'edit'
		end
	end

	def destroy
		@tasklist.destroy
		redirect_to root_path, notice: "Succesfully deleted list!"
	end


	private
	def find_tasklist
		@tasklist = Tasklist.find(params[:id])
	end

	def tasklist_params
		params.require(:tasklist).permit(:title)
	end
end
