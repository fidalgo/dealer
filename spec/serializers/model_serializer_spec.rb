describe ModelSerializer do
  it 'creates special JSON attributes for the API' do
    serie_1 = FactoryGirl.create(:model, name: 'serie_1', model_slug: '1_series')
    FactoryGirl.create(:model_type, model: serie_1, name: 'bmw_116i', model_type_slug: 'bmw116i',
                                    model_type_code: '116i', base_price: 16_000)
    FactoryGirl.create(:model_type, model: serie_1, name: 'bmw_125i', model_type_slug: 'bmw125i',
                                    model_type_code: '125i', base_price: 19_000)

    serializer = ModelSerializer.new(serie_1)
    expect(serializer.to_json).to eql('{"model":{"name":"serie_1","model_types":[{"name":"bmw_116i","total_price":19680.0},{"name":"bmw_125i","total_price":23370.0}]}}')
  end
end
