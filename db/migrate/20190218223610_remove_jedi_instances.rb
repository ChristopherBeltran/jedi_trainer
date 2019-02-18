class RemoveJediInstances < ActiveRecord::Migration[5.2]
  def change
    rename_table :jedi_force_powers, :user_force_powers
    rename_column :trainings, :jedi_id, :user_id
  end
end
