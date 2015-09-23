class KultsController < ApplicationController
  def index
    @kults = Kult.all
  end

  def show
    @kult = Kult.find(params[:id])
    @post = Post.new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
