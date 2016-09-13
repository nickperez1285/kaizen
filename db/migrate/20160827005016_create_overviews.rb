class CreateOverviews < ActiveRecord::Migration
  def change
    create_table :overviews do |t|
	t.references :posting, index: true
    	t.string :info, :default => ''
      t.timestamps null: false
    end
  end
end
