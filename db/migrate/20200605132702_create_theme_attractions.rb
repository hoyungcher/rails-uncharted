class CreateThemeAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_attractions do |t|
      t.references :theme, foreign_key: true
      t.references :attraction, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
