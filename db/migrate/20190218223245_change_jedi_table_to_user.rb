class ChangeJediTableToUser < ActiveRecord::Migration[5.2]
  def change
    rename_table :jedis, :users
  end
end
