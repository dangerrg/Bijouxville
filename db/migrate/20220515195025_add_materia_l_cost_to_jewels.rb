class AddMateriaLCostToJewels < ActiveRecord::Migration[7.0]
  def change
    add_column :jewels, :material_base_cost, :decimal, precision: 5, scale: 2
    add_column :jewels, :price_of_stone, :decimal, precision: 5, scale: 2
  end
end
