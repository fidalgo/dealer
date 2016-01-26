class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :public_name, null: false
      t.integer :type, null: false

      t.timestamps null: false
    end
  end
end
