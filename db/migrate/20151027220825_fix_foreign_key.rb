class FixForeignKey < ActiveRecord::Migration
  def change
  	change_table :gifts do |t|
    t.belongs_to :registry  
  	end
  	# add_column :couples, :registry_id, :integer
  	change_table :items do |t|
  		t.belongs_to :registry 
  		t.belongs_to :gift
  	end
  end
end
