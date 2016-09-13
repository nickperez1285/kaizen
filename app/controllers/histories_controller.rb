class HistoriesController < ApplicationController
	  before_filter :authorize

	def index 
		 @user = User.find(current_user.id)
		@postings = @user.postings.all 
	end 

end
