class CreateRevs < ActiveRecord::Migration
  def change
    create_table :revs do |t|
    	t.references :posting, index: true
    	t.string :info, :default => ''

      t.timestamps null: false
    end
  end
end
