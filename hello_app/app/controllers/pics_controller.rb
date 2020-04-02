class PicsController < ApplicationController
  def show
    @pic = Pic.find(params[:id])
  end

  def new
  end
end
