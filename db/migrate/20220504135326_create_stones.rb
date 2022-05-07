class CreateStones < ActiveRecord::Migration[7.0]
  def change
    create_table :stones do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.references :jewel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
