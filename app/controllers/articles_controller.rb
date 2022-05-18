class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article_new = Article.new
  end

  def create
    new_article = Article.new(article_params)
    if new_article.save
      redirect_to new_article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article_edit = Article.find(params[:id])
  end

  def update
    article_update = Article.find(params[:id])

    if article_update.update(article_params)
      redirect_to article_update
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end



  private
  def article_params
    params.require(:article).permit(:title, :body, :article_cover_image)
  end

end
