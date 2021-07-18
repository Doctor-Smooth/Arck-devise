class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
    
  def new
    @post = Post.new
  end
  
  # def create
  #   @topic = current_user.topics.new(topic_params)
    
  #   if @topic.save!
  #     redirect_to topics_path, success: '投稿に成功しました'
  #   else
  #     flash.now[:danger] = "投稿に失敗しました"
  #     render :new
  #   end
  # end
    
  # def show
  #   @topic = Topic.find_by(id: params[:id])
  #   @user = @post.user
      
  #   @favorites_count = Favorite.where(topic_id:@topic.id).count
  # end
  
  private
  def post_params
    params.require(:post).permit(:image, :description)
  end
  
end
