class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
    
  def new
    @post = Post.new
  end
  
  def create
    @post = current_user.posts.new(post_params)
    
    if @post.save!
      redirect_to posts_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
    
  def show
    @post = Topic.find_by(id: params[:id])
    @user = @post.user
      
    # @favorites_count = Favorite.where(topic_id:@topic.id).count
  end
  
  private
  def post_params
    params.require(:post).permit(:image, :description)
  end
  
end
