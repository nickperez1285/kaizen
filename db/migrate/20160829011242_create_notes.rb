class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
		t.references :posting, index: true
    	t.string :info, :default => ''
      t.timestamps null: false
    end
  end
end
