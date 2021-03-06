class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
  
  def create
    @blog = current_user.blogs.new(blog_params)
    
    if @blog.save!
      redirect_to blogs_path
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:image, :text, :title)
  end
end

