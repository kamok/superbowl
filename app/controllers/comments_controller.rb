class CommentsController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	before_action :set_post

	def new
		@comment = @post.comments.build
	end

	def create
		@comment = @post.comments.build(comment_params)
		@comment.user = current_user

		if @comment.save
			flash[:notice] = "Comment has been created."
			redirect_to @post
		else
			flash[:alert] = "Comment has not been created."
		end
	end

	def index
		@comments = Comment.all.order("created_at DESC")
	end

	# def update
	# end

	private

	def comment_params
		params.require(:comment).permit(:comment)
	end

	def set_post
		
	end
end
