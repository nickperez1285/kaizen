class CreateIndexSections < ActiveRecord::Migration
  def change
    create_table :index_sections do |t|
		t.references :posting, index: true
    	t.string :info, :default => ''
      t.timestamps null: false
    end
  end
end
