class Organization < ActiveRecord::Base
  validates_presence_of :name, :public_name, :type
end
