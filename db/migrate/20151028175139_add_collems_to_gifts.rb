class AddCollemsToGifts < ActiveRecord::Migration
  def change
  	change_table :gifts do |t|
    t.string :from
    t.string :message 
    t.string :total
  	end
  end
end
