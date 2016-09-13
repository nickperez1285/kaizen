class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
	t.references :posting, index: true
    	t.string :info, :default => ''
      t.timestamps null: false
    end
  end
end
