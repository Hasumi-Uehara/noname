class HomesController < ApplicationController
  def index
    @posts = Post.includes(:user).order(created_at: 'DESC').last(3)
  end
  
  def new_guest
    user = User.find_or_create_by!(nickname:'ゲストユーザー',email:'guest@example.com') do |guest|
      guest.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to posts_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
