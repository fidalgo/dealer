class CreateModelTypes < ActiveRecord::Migration
  def change
    create_table :model_types do |t|
      t.references :model, index: true, foreign_key: true
      t.string :name, null: false
      t.string :model_type_slug, null: false
      t.string :model_type_code, null: false
      t.integer :base_price, null: false

      t.timestamps null: false
    end
  end
end
