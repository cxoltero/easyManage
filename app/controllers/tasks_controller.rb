class TasksController < ApplicationController
	def create
		@tasklist = Tasklist.find(params[:tasklist_id])
		@task = @tasklist.tasks.create(params[:task].permit(:name, :content, :duedate))

		redirect_to tasklist_path(@tasklist)
	end

	def destroy
		@tasklist = Tasklist.find(params[:tasklist_id])
		@task = @tasklist.tasks.find(params[:id])
		@task.destroy
		redirect_to tasklist_index_path, notice: "Succesfully deleted task!"
	end

end
