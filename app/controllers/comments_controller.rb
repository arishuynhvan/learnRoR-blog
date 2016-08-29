class CommentsController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

	def create
		@article = Article.find(params[:article_id])
		#Each comment created has to keep track of the article to which
		#the comment is attached (use find to get the right article)

		#C - Create method can create and save the comments
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
		#send the user back to the original article using
		#article_path(@article) as a helper
		#=> call the show action of the ArticlesController 
		#=> renders the show.html.erb template 

		#R - 

		#U -

		
		
	end
	
	#D -
	def destroy
		@article = Article.find(params[:article_id])

		#This is to find the id of the target comment
		@comment = @article.comments.find(params[:id])
		@comment.destroy

		redirect_to articles_path(@article)
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
