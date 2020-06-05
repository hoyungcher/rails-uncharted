class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.string :types
      t.references :locality, foreign_key: true

      t.timestamps
    end
  end
end
