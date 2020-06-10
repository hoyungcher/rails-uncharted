class CreateThemeLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_localities do |t|
      t.references :theme, foreign_key: true
      t.references :locality, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
