class PostsController < ApplicationController
    before_action :authenticate_user
  def index
    @konno = Konno.all
  end

  def show
    @konno = Konno.find_by(id: params[:id])
    @user = @konno.user
  end

  def new
    @konno = Konno.new
  end

  def create
    @konno = Konno.new(content: params[:content],user_id: @current_user.id)
    if @konno.save
      flash[:notice]= "投稿成功"
      redirect_to("/index")
    else
      flash[:notice]= "投稿失敗"
      render("posts/new")
    end
  end

  def edit
    @konno = Konno.find_by(id: params[:id])
  end

  def update
    @konno = Konno.find_by(id: params[:id])
    @konno.content = params[:content]
    if @konno.save
      flash[:notice]= "編集しました"
      redirect_to("/index")
    else
      render("posts/edit")
    end
  end

  def destroy
    @konno = Konno.find_by(id: params[:id])
    @konno.destroy
    flash[:notice]= "削除"
    redirect_to("/index")
  end
end
