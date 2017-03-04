class CommentsController < ApplicationController
	def create
		@forum = Forum.friendly.find(params[:forum_id])
		@comment = @forum.comments.create(params[:comment].permit(:comment))
		@comment.user = current_user
		@comment.save!

		redirect_to forum_path(@forum)
	end

	def destroy
		@forum = Forum.friendly.find(params[:forum_id])
		@comment = @forum.comments.find(params[:id])
		@comment.destroy

		redirect_to forum_path(@forum)
	end
end
