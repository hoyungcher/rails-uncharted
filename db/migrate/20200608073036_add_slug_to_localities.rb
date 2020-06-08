class AddSlugToLocalities < ActiveRecord::Migration[5.2]
  def change
    add_column :localities, :slug, :string
  end
end
