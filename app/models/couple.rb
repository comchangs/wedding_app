class Couple < ActiveRecord::Base
	has_one :registry

	validates :name1, :name2, :email, :password_digest, presence: true, confirmation: true
	validates_uniqueness_of :email
	validates :password, length: {minimum: 1}

	has_secure_password

	def self.confirm(params)
		@couple = Couple.find_by({email: params[:email]})
	    @couple.try(:authenticate, params[:password_digest])
	end
end
