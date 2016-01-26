class Model < ActiveRecord::Base
  belongs_to :organization
  validates_presence_of :name, :model_slug
end
