class CreateGrandmoms < ActiveRecord::Migration
  def change
    create_table :grandmoms do |t|
      t.string :name

      t.timestamps
    end
  end
end
