class SessionsController < ApplicationController

	def create
		user = User.find_by( email: params[:email].downcase )
		if user && user.authenticate( params[:password] )
			logger.debug 'Uspio se ulogirati'
			session[:current_user] = user;
			render :json => user
		else
			logger.debug 'Nije se uspio ulogirati'
			render :json => { status: "failure" }
		end
	end

	def destroy
	end
end
