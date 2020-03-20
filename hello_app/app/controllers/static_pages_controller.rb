class StaticPagesController < ApplicationController
  def home
    @id = (1..20).to_a.shuffle.first
    @path = Pic.find(@id).picInfo
  end
  def second
    @id = (1..10).to_a.shuffle.first
    @path = Pic.find(@id).picInfo
  end
  def third
    @id = (11..20).to_a.shuffle.first
    @path = Pic.find(@id).picInfo
  end
end
