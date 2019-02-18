class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_force_powers, :jedi_id, :user_id
  end
end
