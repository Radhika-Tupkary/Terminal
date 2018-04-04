class CreateTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :description
      t.string :attrs

      t.timestamps
    end
  end
end
