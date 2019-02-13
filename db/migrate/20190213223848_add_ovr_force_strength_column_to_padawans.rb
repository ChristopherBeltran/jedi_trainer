class AddOvrForceStrengthColumnToPadawans < ActiveRecord::Migration[5.2]
  def change
    add_column :padawans, :ovr_force_strength, :integer
  end
end
