require 'rails_helper'

RSpec.describe ModelsController, type: :controller do
  context 'GET new' do
    let(:model_slug) { '1_series' }
    it 'assigns a blank subscription to the view' do
      model = FactoryGirl.create(:model, model_slug: model_slug)
      FactoryGirl.create_list(:model_type, 2, model: model)
      params = { model_slug: model_slug }
      get :model_types, params
      expect(assigns(:models)).to contain_exactly(model)
    end
  end
end
