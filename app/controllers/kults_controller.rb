class KultsController < ApplicationController
  def index
    @kults = Kult.all
  end

  def show
    @kult = Kult.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
