class CreateEducates < ActiveRecord::Migration
  def change
    create_table :educates do |t|
	t.references :posting, index: true
    	t.string :info, :default => ''
      t.timestamps null: false
    end
  end
end
