class RemoveIdsFromRegistry < ActiveRecord::Migration
  def change
    remove_column :registries, :item_id, :integer
    remove_column :registries, :gift_id, :integer
    remove_column :items, :gift_id, :integer
  end
end
