class StaticPagesController < ApplicationController
  def home
  end
  def second
    @path = (1..10).to_a.shuffle.first
  end
  def third
    @path = (11..20).to_a.shuffle.first
  end
end
