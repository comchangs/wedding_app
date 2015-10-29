class ItemsController < ApplicationController
	def index
  	end

	def new
		@item = Item.new
		@registry = Registry.find_by_id(params[:registry_id])
		@current_couple = current_couple
  		if @current_couple
      	render :new
    	else
    	redirect_to sign_in_path
    	end
	end

	def create
		@item = Item.new(item_params)
		# @registry = Registry.find(@item.registry_id)
		@current_couple = current_couple
		@couple_id = current_couple.id
		@registry = Registry.find_by couple_id: @couple_id
		@item.registry = Registry.find(@registry.id) #this is an inportant line 

		@item.save
		redirect_to edit_couple_registry_path(@couple_id, @registry.id)

		
		# @couple = current_couple
		# @registry = Registry.find_by_id(params[:id])
	 #    if @item.save
	 #      redirect_to "/couples/#{@couple.id}/registries/#{@registry.id}"
	 #    else
	 #      redirect_to "/couples/#{@couple.id}"
	 #    end
	end

	def show
		@couple = current_couple
		@registry = Registry.find_by_id(params[:id])
		@items = Item.where registry_id: @registry.id
	end

	def destroy
		@item = Item.find_by_id(params[:id])
		@item.destroy

		@couple_id = current_couple.id
		@registry = Registry.find_by couple_id: @couple_id
		redirect_to edit_couple_registry_path(@couple_id, @registry.id)

		# @city = City.find_by_id(params[:city_id])
		# @all_comments = Comment.all.where(:post_id => @post.id)
		# @all_comments.destroy
		
		redirect_to edit_couple_registry_path
	end

	def edit
		@item = Item.find(params[:id])
		
		
		
	end

	def update
		@item = Item.all
		@couple = current_couple.id
		@registry = Registry.find_by couple_id: @couple
		redirect_to edit_couple_registry_path(@couple, @registry.id)
	end 

	private

	def item_params
	  params.require(:item).permit(:name, :price, :description)
	end

  
end