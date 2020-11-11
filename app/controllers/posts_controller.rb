class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post =  Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  end

  # 投稿データ保存
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:gim_name, :body, :user_id)
  end
end
