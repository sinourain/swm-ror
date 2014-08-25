class ProfileController < ApplicationController
  def index
  	@users = User.all
  	@microposts = Micropost.all
  end
end
