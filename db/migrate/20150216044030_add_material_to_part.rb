class AddMaterialToPart < ActiveRecord::Migration
  def change
    add_column :parts, :material, :text
  end
end
