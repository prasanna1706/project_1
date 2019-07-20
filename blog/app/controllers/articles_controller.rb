class ArticlesController < ApplicationController
  def _form
  end
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end
 
 def new
  @articles = Article.new
end
 
  def edit
  @articles = Article.find(params[:id])
end
 
def create
  @articles = Article.new(article_params)
 
  @articles.save
  redirect_to @article
end 

def update
  @articles = Article.find(params[:id])
 
  if @articles.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
