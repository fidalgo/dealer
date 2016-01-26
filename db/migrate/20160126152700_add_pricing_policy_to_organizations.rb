class AddPricingPolicyToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :pricing_policy, :integer, null: false, default: 0
  end
end
