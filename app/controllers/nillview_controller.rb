class NillviewController < ApplicationController
	layout false
  def index
  	@users=Signup.all
  end
end
