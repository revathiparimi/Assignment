class DashboardController < ApplicationController
  layout "allviews"
  def index
  	#@users=Signup.all
  	@user=Signup.where(emailid: session[:user])
  end
end
