class Note < ActiveRecord::Base
		belongs_to :posting 
	belongs_to :user
end
