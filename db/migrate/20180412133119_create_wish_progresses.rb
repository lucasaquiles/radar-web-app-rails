class CreateWishProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :wish_progresses do |t|
      t.string :description
      t.date :dataRegistro
      t.references :goal
      t.belongs_to :relevance
      t.timestamps
    end
  end
end
