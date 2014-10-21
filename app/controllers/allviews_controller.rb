class AllviewsController < ApplicationController
	layout "adminlayout"
  def index
  	if session[:user]!='revathi.parimi@gmail.com'
  		flash[:notadmin]="you don't have access to AdminView"
  		redirect_to '/dashboard/index'
  	end
  	@users=Signup.all
  end
end
