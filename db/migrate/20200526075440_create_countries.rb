class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_3166_1_alpha2
      t.string :iso_3166_1_alpha3
      t.string :iso_3166_1_numeric

      t.timestamps
    end
  end
end
