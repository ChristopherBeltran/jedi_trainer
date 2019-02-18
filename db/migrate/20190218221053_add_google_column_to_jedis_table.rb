class AddGoogleColumnToJedisTable < ActiveRecord::Migration[5.2]
  def change
    add_column :jedis, :google_token, :string
    add_column :jedis, :google_refresh_token, :string
  end
end
