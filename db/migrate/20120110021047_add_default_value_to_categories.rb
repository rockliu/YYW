class AddDefaultValueToCategories < ActiveRecord::Migration
  def change
  	change_column_default(:categories, :in_menu, true)
  end
end
