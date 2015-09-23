class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    kult = Kult.find(params[:kult_id])
    @post = Post.new(post_params)
    @post.kult = kult
    @post.user = current_user
    @post.save
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
