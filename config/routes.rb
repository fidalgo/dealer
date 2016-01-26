Rails.application.routes.draw do
  get 'models/:model_slug/model_types', to: 'models#model_types'
  post 'models/:model_slug/model_types_price/:model_type_slug', to: 'models#model_types_price'
end
