class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post,        only: [:show, :edit, :update, :destroy]
  before_action :move_to_index,   only: [:edit, :update]
  before_action :set_q,           only: [:search, :search_table]

  def index
    @posts = Post.includes(:user).order(created_at: 'DESC').last(3)
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
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def destroy
    @post.destroy if current_user.id == @post.user_id
    redirect_to user_path(@post.user.id)
  end

  def search
    @posts = Post.includes(:user).order(created_at: 'DESC')
  end

  def search_table
    @posts = @q.result
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless current_user.id == @post.user_id
  end

  def set_q
    @q = Post.ransack(params[:q]) 
  end

  def post_params
    params.require(:post).permit(:event_date, :event_name, :prefecture_id, :tournament_record, :title, :text, :image).merge(user_id: current_user.id)
  end
end
