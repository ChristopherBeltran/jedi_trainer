class CreatePadawanForcePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :padawan_force_powers do |t|
      t.integer :padawan_id
      t.integer :force_power_id
      t.integer :skill_level
    end
  end
end
