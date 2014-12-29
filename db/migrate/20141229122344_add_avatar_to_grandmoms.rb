class AddAvatarToGrandmoms < ActiveRecord::Migration
  def change
    add_column :grandmoms, :avatar, :string
  end
end
