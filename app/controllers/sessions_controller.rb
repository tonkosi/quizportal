class SessionsController < ApplicationController

	def create
		user = User.find_by( email: params[:email].downcase )
		if user && user.authenticate( params[:password] )
			logger.debug 'Uspio se ulogirati'
		else
			logger.debug 'Nije se uspio ulogirati'
		end
	end

	def destroy
	end
end
