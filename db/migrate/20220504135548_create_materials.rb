class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :base_cost, precision: 5, scale: 2
      t.references :jewel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
