class AddNameToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :name, :string
  end
end
