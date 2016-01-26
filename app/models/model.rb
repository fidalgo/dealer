class Model < ActiveRecord::Base
  belongs_to :organization
  has_many :model_types
  validates_presence_of :name, :model_slug
end
