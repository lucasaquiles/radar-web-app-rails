class CreateWishProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :wish_progresses do |t|
      t.string :description
      t.date :dataRegistro
      t.references :wish
      t.references :relevance
      t.timestamps
    end
  end
end
