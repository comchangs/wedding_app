class AddForeignKeyToCouple < ActiveRecord::Migration
  def change
  	change_table :registries do |t|
  		t.integer :item_id
  		t.integer :gift_id
      t.belongs_to :couple
  	end
  end
end
