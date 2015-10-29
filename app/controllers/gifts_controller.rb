class GiftsController < ApplicationController
  	def index
  	end

	def new
		item_ids = [13, 14, 15]
		@gift = Gift.new
		@gift.items = Item.find(item_ids)
	end

	def create
		@gift= Gift.new(gift_params)
		
		@current_item = current_couple #######!!! change
		
		@item_id = @gift.item.@curent_item.registry.id

		@registry = Registry.find_by item_id: @item_id
		@item.registry = Registry.find(@registry.id) #this is an inportant line 

		@item.save
		redirect_to edit_couple_registry_path(@couple_id, @registry.id)
	end

	def show
	end

	def destroy
	end

	def edit
	end

	def update
	end 

  
end