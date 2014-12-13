class RecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :edit, :update, :destroy]

def index
	@recipe = Recipe.all.order("created_at DESC")
end

def new
	@recipe = Recipe.new
end

def show
	# @recipe = 
end

def create
	@recipe = Recipe.new(recipe_params)
	if @recipe.save
		redirect_to @recipe, notice: "Succesfully created new recipe"
	else
		render 'new'
	end
end

def find_recipe
@recipe = Recipe.find(params[:id])
end

def recipe_params
	params.require(:recipe).permit(:title, :description)
end


end
