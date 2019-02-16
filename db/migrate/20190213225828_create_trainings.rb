class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.integer :jedi_id
      t.integer :padawan_id
    end
  end
end
