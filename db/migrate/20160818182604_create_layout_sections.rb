class CreateLayoutSections < ActiveRecord::Migration
  def change
    create_table :layout_sections do |t|
		t.references :posting, index: true
			t.string :primary , :default => ''
			t.string :secondary,  :default => ''
      t.timestamps null: false
    end
  end
end
