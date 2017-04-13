class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].present?

  		session[:name] = params[:name]
  		redirect_to home_path
  	else
  		redirect_to login_path
  	end
  end

 	def show
 		current_user
 	end

 	def destroy
 		session.destroy
 		redirect_to login_path
 	end

end
