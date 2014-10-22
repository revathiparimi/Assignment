class DefaultviewsController < ApplicationController
	 #layout false
  def index
  	@users=Signup.all
  end
end
