class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
		t.references :posting, index: true
    	t.string :name, :default => ''
    	t.string :email, :default => ''
    	t.string :phone, :default => ''
    	t.string :phone, :default => ''
    	t.string :linkedinOrWebsite, :default => ''
      t.string :notes, :default => ''
      t.timestamps null: false
    end
  end
end
