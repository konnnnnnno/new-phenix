class PostsController < ApplicationController
  def index
    @konno = Konno.all
  end

  def show
    @konno = Konno.find_by(id: params[:id])
  end

  def new
  end

  def create
    @konno = Konno.new(content: params[:content])
    @konno.save
    redirect_to("/index")
  end

  def edit
    @konno = Konno.find_by(id: params[:id])
  end

  def update
    @konno = Konno.find_by(id: params[:id])
    @konno.content = params[:content]
    @konno.save
    redirect_to("/index")
  end

  def destroy
    @konno = Konno.find_by(id: params[:id])
    @konno.destroy
    redirect_to("/index")
  end
end
