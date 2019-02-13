class CreateJedis < ActiveRecord::Migration[5.2]
  def change
    create_table :jedis do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :master
      t.integer :trained_padawans
      t.string :lightsaber_color
      t.integer :age
      t.string :homeplanet
      t.string :species
      t.integer :ovr_force_strength

      t.timestamps
    end
  end
end
