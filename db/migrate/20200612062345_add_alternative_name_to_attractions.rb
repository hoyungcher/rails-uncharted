class AddAlternativeNameToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :alternative_name, :string
  end
end
