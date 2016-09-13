class CreatePostings < ActiveRecord::Migration
	def change
		create_table :postings do |t|
			t.references :user, index: true
			t.string :begin
			t.string :test
			t.string :educate
			t.string :create
			t.string :hone
			t.string :index
			t.string :notes
			t.string :contacts
			t.string :contacts_name
			t.string :contacts_email
			t.string :contacts_linkedin
			t.string :contacts_notes
			t.timestamps null: false

		end 
	end 
end 