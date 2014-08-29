class WelcomeController < ApplicationController
  def index
  	@microposts = Micropost.all
  	@micropost = Micropost.new
  end
end
