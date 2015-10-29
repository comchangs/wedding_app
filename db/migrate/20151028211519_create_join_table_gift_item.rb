class CreateJoinTableGiftItem < ActiveRecord::Migration
  def change
    create_join_table :gifts, :items do |t|
      t.index [:gift_id, :item_id]
      t.index [:item_id, :gift_id]
    end
  end
end
