class CloudfilesController < ApplicationController
	before_action :authenticate_user!, except: [:index]
  def index
  end

  def new
  	@file = Cloudfile.new
  end
  def create
  	@file = current_user.cloudfiles.build(file_params)
  	if @file.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end
  private
  
  def file_params
  	params.require(:cloudfile).permit(:user_id, :name, :description, :ffile, :security)
  end  
end
