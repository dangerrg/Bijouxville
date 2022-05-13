class RemoveEmailFromJewelers < ActiveRecord::Migration[7.0]
  def change
    remove_column :jewelers, :email, :string
  end
end
