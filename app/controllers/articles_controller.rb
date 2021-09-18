class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = current_user.articles.new(blog_params)
    
    if @article.save!
      redirect_to articles_path
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:image, :text, :title)
  end
end
