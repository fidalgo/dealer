class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :model_slug, null: false
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
