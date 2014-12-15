class NotesController < ApplicationController
	def index
		@note= Notes.all
	end

	def show
		@note=Note.find_note()
	end

	def new
		@note=Note.new
	end

	def create
	end


	def update
	end

	def destroy
	end

	private
	def find_note
	end

	def notes_params
	end
end
