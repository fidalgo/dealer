class Organization < ActiveRecord::Base
  enum type: [:show_room, :service, :dealer]
  enum pricing_policy: [:flexible, :fixed, :prestige]

  validates_presence_of :name, :public_name, :type, :pricing_policy
end
