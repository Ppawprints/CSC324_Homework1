class StaticPagesController < ApplicationController
  def home
  end
  def second
    @picId = (1..10).to_a.shuffle.first
    @path = @picId.to_s + ".jpg"
  end
  def third
    @picId = (11..20).to_a.shuffle.first
    @path = @picId.to_s + ".jpg"
  end
end
