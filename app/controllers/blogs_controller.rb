class BlogsController < ApplicationController
  def index
    @blogs = Blog.all 
  end

  def show
  end

  def new
    @blog = Blog.new
  end
  
  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end
  
  # ---- 以下を追加してください ---- #
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
