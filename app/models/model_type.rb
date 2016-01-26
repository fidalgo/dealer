class ModelType < ActiveRecord::Base
  belongs_to :model
  validates_presence_of :name, :model_type_slug, :model_type_code, :base_price

  def total_price
    base_price * 1.23
  end
end
