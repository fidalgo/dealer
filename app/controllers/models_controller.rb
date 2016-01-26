class ModelsController < ApplicationController
  def model_types
    @models = Model.includes(:model_types).where(model_slug: params[:model_slug])
    render json: @models
  end

  def model_types_price
  end
end
