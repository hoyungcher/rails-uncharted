class AddSlugToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :slug, :string
  end
end
