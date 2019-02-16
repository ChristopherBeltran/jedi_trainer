class ForcePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :force_powers do |t|
      t.string :name
    end 
  end
end
