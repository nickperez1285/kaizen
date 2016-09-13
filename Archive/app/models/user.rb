class User < ActiveRecord::Base
	has_secure_password

	has_many :postings
	has_many :outlines,  :through => :posting 
	has_many :layout_sections,  :through => :posting 
	has_many :evolves,  :through => :posting 
	has_many :revs,  :through => :posting 
	has_many :overviews,  :through => :posting 
	has_many :tests,  :through => :posting 
	has_many :educates,  :through => :posting 
	has_many :creates,  :through => :posting 
	has_many :hones, :through => :posting 
	has_many :index_sections, :through => :posting
	has_many :notes, :through => :posting
	has_many :contacts, :through => :posting

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

	validates :first_name, :alias, 
							presence: true,
							length: { maximum: 50 }

	validates :email, 		presence: true, 
							uniqueness: { case_sensitive: false }, 
							format: { with: EMAIL_REGEX }

	validates :password, 	presence: true, 
							confirmation: true

end
