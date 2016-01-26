class FixOrganizationTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :organizations, :type, :organization_type
  end
end
