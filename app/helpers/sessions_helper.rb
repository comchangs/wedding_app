module SessionsHelper 
	def login(couple)
		session[:couple_id] = couple.id
		@current_couple = couple
	end

	def current_couple
		@current_couple ||= Couple.find_by_id(session[:couple_id])
	end

	def logged_in? 
		if current_couple == nil
			redirect_to login_path
		end
	end

	def signed_in?
		if current_couple == nil
			return false
		else
			return true
		end
	end

	def correct_couple(registries)
		if @current_couple.id == registries.couple_id
			return true
		else
			return false
		end
	end

	def logout
		@current_couple = session[:couple_id]= nil
	end
	
	def if_right_ucouple
	  @current_couple = exactUser
	  if @current_couple = !@current_couple
	    redirect_to login_path
	  end  
	end
	
end