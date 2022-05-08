class CreateStones < ActiveRecord::Migration[7.0]
  def change
    create_table :stones do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.references :jewel, null: true, foreign_key: false

      t.timestamps
    end
  end
end
