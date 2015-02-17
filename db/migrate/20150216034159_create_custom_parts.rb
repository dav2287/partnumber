class CreateCustomParts < ActiveRecord::Migration
  def change
    create_table :custom_parts do |t|
      t.references :part, index: true

      t.timestamps null: false
    end
    add_foreign_key :custom_parts, :parts
  end
end
