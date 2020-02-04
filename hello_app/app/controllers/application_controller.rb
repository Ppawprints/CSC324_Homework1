class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "hello, world! (I really hope this works.)"
  end
end

