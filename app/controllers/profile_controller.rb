class ProfileController < ApplicationController
	before_action :authenticate_user!
	def index
	  	@users = User.all
	  	@microposts = Micropost.all
	  	@micropost = Micropost.new
	end
end
