class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.boolean :status
      t.integer :points
      t.belongs_to :wish
      t.timestamps
    end
  end
end
