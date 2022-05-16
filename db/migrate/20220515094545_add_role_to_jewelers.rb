class AddRoleToJewelers < ActiveRecord::Migration[7.0]
  def change
    add_column :jewelers, :role, :string
  end
end
