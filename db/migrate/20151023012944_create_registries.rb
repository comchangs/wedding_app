class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :theam

      t.timestamps null: false
    end
  end
end
