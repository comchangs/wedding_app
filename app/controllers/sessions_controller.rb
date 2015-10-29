class SessionsController < ApplicationController


  def new
  	@couple = Couple.new
  	render :new 
  end

  def create
  	@couple = Couple.confirm(couple_params)
  	if @couple
  		login(@couple)
  		redirect_to "/couples/#{@couple.id}"
  	else
  	 	redirect_to sign_up_path
  	end
  end

  def destroy
  	logout
  	redirect_to root_path
  end

  private
  def couple_params 
  	params.require(:couple).permit(:email, :password_digest)
  end

end