class SessionsController < ApplicationController
	def index
		if session[:current_user_id]
			user = User.find( session[:current_user_id] )
			logger.debug session[:current_user_id]
			render :json => user
		else
			render :json => { status: "failure" }
		end
	end

	def create
		user = User.find_by( email: params[:email].downcase )
		if user && user.authenticate( params[:password] )
			logger.debug 'Uspio se ulogirati'
			session[:current_user_id] = user.id;
			redirect_to "/"
		else
			logger.debug 'Nije se uspio ulogirati'
			redirect_to :controller => 'login', :action => 'index', :email => params[:email]
		end
	end

	def destroy
		session[:current_user_id] = nil;
		redirect_to "/"
	end
end
