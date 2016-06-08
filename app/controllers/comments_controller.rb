class CommentsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def create
		post = Post.find_by(id: params[:id])

		comment = post.comments.build(comment_params)
		comment.user = current_user

		if comment.save
			flash[:notice] = "Comment has been created."
			redirect_to post
		else
			flash[:alert] = "Comment has not been created."
		end
	end

	private

	def comment_params
		params.permit(:comment)
	end

end
