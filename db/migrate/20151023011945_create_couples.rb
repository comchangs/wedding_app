class CreateCouples < ActiveRecord::Migration
  def change
    create_table :couples do |t|
      t.string :name1
      t.string :name2
      t.date :date
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
