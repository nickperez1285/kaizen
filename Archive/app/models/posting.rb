class Posting < ActiveRecord::Base
	  belongs_to :user
	  has_many :outlines
	  has_many :layout_sections
	  has_many :evolves, :class_name => "Evolve"
	  has_many :revs
	  has_many :overviews
	  has_many :tests
	  has_many :educates
	  has_many :creates
	  has_many :hones
	  has_many :index_sections
	  has_many :notes
	  has_many :contacts

	  accepts_nested_attributes_for :outlines 
	  accepts_nested_attributes_for :layout_sections
	  accepts_nested_attributes_for :evolves
	  accepts_nested_attributes_for :revs
	  accepts_nested_attributes_for :overviews
	  accepts_nested_attributes_for :tests
	  accepts_nested_attributes_for :educates
	  accepts_nested_attributes_for :creates
	  accepts_nested_attributes_for :hones
	  accepts_nested_attributes_for :index_sections
	  accepts_nested_attributes_for :notes
	  accepts_nested_attributes_for :contacts
end

