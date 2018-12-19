class PagesController < ApplicationController
	before_action :authenticate_user!

  def index

  	@q = Cloudfile.search(params[:q])
  	@cloudfiles =  @q.result(distinct: true)
  	
  end
end
