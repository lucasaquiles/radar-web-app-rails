class CreateRelevances < ActiveRecord::Migration[5.1]
  def change
    create_table :relevances do |t|
      t.string :description

      t.timestamps
    end
  end
end
