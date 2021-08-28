class ArticlesController < ApplicationController

    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article].inspect

        @article = Article.new(article_params)
        @article.save

        redirect_to @article

        # respond_to do |format|
        #     if @article.save
        #       format.html { redirect_to @article, notice: "Article was successfully created." }
        #       format.json { render :show, status: :created, location: @article }
        #     else
        #       format.html { render :new, status: :unprocessable_entity }
        #       format.json { render json: @article.errors, status: :unprocessable_entity }
        #     end
        #   end
    end
    

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
end