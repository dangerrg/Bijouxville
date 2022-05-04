class CreateJewels < ActiveRecord::Migration[7.0]
  def change
    create_table :jewels do |t|
      t.string :name
      t.string :material
      t.string :type_of_stones
      t.integer :number_of_stones
      t.text :description
      t.decimal :price, precision: 0, scale: 2
      t.references :jeweler, null: false, foreign_key: true

      t.timestamps
    end
  end
end
