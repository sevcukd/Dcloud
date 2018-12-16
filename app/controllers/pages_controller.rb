class PagesController < ApplicationController
	before_action :authenticate_user!

  def index
  	@cloudfiles = Cloudfile.all
  	
  end
end
