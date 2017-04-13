class SecretsController < ApplicationController

	def show
		if !session[:name].present?
			redirect_to login_path
		end


	end

end
