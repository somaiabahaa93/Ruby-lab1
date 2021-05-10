class ArticlesController < ApplicationController
  before_action :authenticate_user!
  # Article.accessible_by(current_ability)
  load_and_authorize_resource

    def index
        @articles = Article.all
        # render :json => @articles
      end

      def edit
        @article = Article.find(params[:id])
      end

    def show
        @article = Article.find(params[:id])
        # authorize! :read, @article
        # render :json => @article ,:serializer => FancyPostSerializer
      end

    def new
      @article = Article.new
    end 
    def update
      @article = Article.find(params[:id])
     
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

    def create
        @article = current_user.articles.new(article_params)
        @article.user_id=current_user.id
        if @article.save
            redirect_to @article
          else
            render 'new'
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
