class AddSlugToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :slug, :string
  end

end
