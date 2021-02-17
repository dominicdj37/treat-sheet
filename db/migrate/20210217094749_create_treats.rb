class CreateTreats < ActiveRecord::Migration[6.1]
  def change
    create_table :treats do |t|
      t.string :by_name
      t.string :venue

      t.timestamps
    end
  end
end
