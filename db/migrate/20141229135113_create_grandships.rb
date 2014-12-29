class CreateGrandships < ActiveRecord::Migration
  def change
    create_table :grandships do |t|
      t.integer :skill_id
      t.integer :grandmom_id

      t.timestamps
    end
  end
end
