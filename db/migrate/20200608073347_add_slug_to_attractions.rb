class AddSlugToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :slug, :string
  end
end
