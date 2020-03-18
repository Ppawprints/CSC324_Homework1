class StaticPagesController < ApplicationController
  def home
    @result_mixed = (1..20).to_a.shuffle.first
  end
  def second
    @result_cat = (1..10).to_a.shuffle.first
  end
  def third
    @result_dog = (11..20).to_a.shuffle.first
  end
end
