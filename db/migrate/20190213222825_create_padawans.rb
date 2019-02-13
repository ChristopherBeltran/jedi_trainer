class CreatePadawans < ActiveRecord::Migration[5.2]
  def change
    create_table :padawans do |t|
      t.string :name
      t.integer :age
      t.string :homeplanet
      t.string :species
    end
  end
end
