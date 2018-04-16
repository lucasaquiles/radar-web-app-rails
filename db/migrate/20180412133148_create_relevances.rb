class CreateRelevances < ActiveRecord::Migration[5.1]
  def change
    create_table :relevances do |t|
      t.string :description
      t.integer :value	
      t.references :wish_progress
      t.timestamps
    end
  end
end
