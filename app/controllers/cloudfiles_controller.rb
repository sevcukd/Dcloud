class CloudfilesController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	before_action :find_cloudfile, only: [:show, :edit, :update, :destroy]
  def index

        @q = Cloudfile.search(params[:q])
        @cloudfiles =  @q.result(distinct: true)    
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

  def update
    if @cloudfile.update(file_params)
      redirect_to root_path
    end
  end

  def destroy
    @cloudfile.destroy
    redirect_to root_path
  end
  private
  
  def file_params
  	params.require(:cloudfile).permit(:user_id, :name, :description, :ffile, :security)
  end  
    def find_cloudfile
    @cloudfile = Cloudfile.find_by(id: params[:id])
  end
end