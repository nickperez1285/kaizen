class LayoutSection < ActiveRecord::Base
	belongs_to :posting
	belongs_to :user 
end
