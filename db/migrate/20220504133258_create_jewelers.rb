class CreateJewelers < ActiveRecord::Migration[7.0]
  def change
    create_table :jewelers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end