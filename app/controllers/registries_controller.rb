class RegistriesController < ApplicationController
  	before_action :logged_in?, only: [:edit, :destroy, :update]

  	def index
    	
  	end

	def new
		@registry = Registry.new
		@current_couple = current_couple
  		if @current_couple
      	render :new
    	else
    	redirect_to sign_in_path
    	end
	end

	def create
		@registry = Registry.new(registry_params)
		@couple = current_couple
		@registry.couple = Couple.find(current_couple.id)
		# @couple = Couple.find_by_id(params[:registry_id])
		# @item = Item.find_by_id(@registry.item_id)
	    if @registry.save
	      # login(@registry)
	      redirect_to "/couples/#{@couple.id}/registries/#{@registry.id}"
	    else
	      redirect_to "/"
	    end
	end

	def show
		# this post
		@couple = current_couple
		@registry = Registry.find_by_id(params[:id])
		@items = Item.where registry_id: @registry.id
		
		

	
	end

	def destroy
	end

	def edit
		@couple = current_couple
		@registry = Registry.find_by_id(params[:id])
		@items = Item.where registry_id: @registry.id
    	render :edit
	end

	def update
		@couple = current_couple
		@registry = Registry.find_by_id(params[:id])
		@registry.update(registry_params)
		redirect_to edit_couple_registry_path(@couple.id, @registry)
	end 

	private
	  def registry_params 
	  	params.require(:registry).permit(:theam)
	  end
  
end