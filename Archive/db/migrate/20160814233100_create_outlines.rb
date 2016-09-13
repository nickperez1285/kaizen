class CreateOutlines < ActiveRecord::Migration
  def change
    create_table :outlines do |t|
		t.references :posting, index: true
			t.string :tagline ,:default => ''
      t.timestamps null: false
    end
  end
end
