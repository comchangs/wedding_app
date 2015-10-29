class CouplesController < ApplicationController
	before_action :logged_in?, only: [:show, :edit, :destroy, :update]
	
	def index
	end

	def new
		@couple = Couple.new

	end

	def create
	    @couple = Couple.new(couple_params)
	    if @couple.save
	      login(@couple)
	      redirect_to new_couple_registry_path(@couple)
	    else
	      render :new
	    end
	end

	def show
		@couple = Couple.find_by_id(params[:id])
		@registry = Registry.find_by couple_id: @couple.id
	end

	def destroy
	end

	def edit
		@couple = Couple.find(params[:id])
    	render :edit
	end

	def update
		@couple = Couple.find(params[:id])
		@couple.update(couple_params)
		redirect_to "/couples/#{@couple.id}"
	end 
	
	def welcome

	end

	private

	def couple_params
	  params.require(:couple).permit(:name1, :name2, :email, :password)
	end


end