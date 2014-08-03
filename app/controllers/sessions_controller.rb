class SessionsController < ApplicationController

	def create
		user = User.find_by( email: params[:session][:email].downcase )
		if user && user.authenticate( params[:session][:password] )
	end

	def destroy
	end
end
