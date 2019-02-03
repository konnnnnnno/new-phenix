class PostsController < ApplicationController
  def index
    @konnos=Konno.all
  end

  def show
    @konno =Konno.find_by(id:params[:id])
  end

  def new
  end

  def create
    redirect_to("/posts/index")
  end


end
