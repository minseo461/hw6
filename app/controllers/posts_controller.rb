class PostsController < ApplicationController
  def index
    @post= Post.new
    @posts=Post.all
    @category = Category.all
    @postsearch=Post.search(params[:search])
  end
  
  def create
    post=Post.new(post_params)
    post.save
    redirect_to posts_url
  end
  def show
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:name, :contents, :category_id)
  end
end
