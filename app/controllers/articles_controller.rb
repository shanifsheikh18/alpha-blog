class ArticlesController < ApplicationController
    def show
        # debugger
        @article = Article.find(params[:id]) # params --> means articles/1 <--parameters
    end

    def index
        @articles = Article.all
    end

    def new

    end

    def create
        #  render plain: params[:article]
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            # redirect_to article_path(@article) #shortcut is -->
            redirect_to @article
        else
            render :new
        end
    end
end