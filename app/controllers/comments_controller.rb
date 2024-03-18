class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
end

private
def comment_params
  params.require(:comments).permit(:text).merge(user_id: current_user.id, customer_id: params[:costomer_id])
