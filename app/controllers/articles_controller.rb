class ArticlesController < ApplicationController
    def show
        # debugger
        @article = Article.find(params[:id]) # params --> means articles/1 <--parameters
    end
end