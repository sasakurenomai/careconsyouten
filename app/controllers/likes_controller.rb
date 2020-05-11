class LikesController < ApplicationController

  def create
    @like = Like.create(post_id: params[:post_id], user_id: current_user.id)
    @post = Post.find(params[:post_id])
  end

  def destroy
  end

end
