class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.includes(:user).order(created_at: 'DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:event_date, :event_name, :prefecture_id, :tournament_record, :title, :text, :image).merge(user_id: current_user.id)
  end
end
