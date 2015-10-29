module RegistriesHelper
	def exactUser
		@current_couple = Couple.find_by_id(session[:couple_id])
	end

	def commentUser(post)
		@comment_couple = Couple.find_by_id(registry.couple_id)
	end
end
