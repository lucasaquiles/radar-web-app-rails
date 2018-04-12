class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :description
      t.date :initDate
      t.date :endDate
      t.belongs_to :user
      t.timestamps
    end
  end
end
