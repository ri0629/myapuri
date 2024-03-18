class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
end


