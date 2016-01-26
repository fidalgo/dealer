require 'rails_helper'

RSpec.describe ModelType, type: :model do
  it 'should have valid factory' do
    expect(FactoryGirl.build(:model_type)).to be_valid
  end

  context 'db' do
    context 'indexes' do
      it { should have_db_index(:model_id) }
    end

    context 'columns' do
      it { should have_db_column(:name).of_type(:string).with_options(null: false) }
      it { should have_db_column(:model_type_slug).of_type(:string).with_options(null: false) }
      it { should have_db_column(:model_type_code).of_type(:string).with_options(null: false) }
      it { should have_db_column(:base_price).of_type(:integer).with_options(null: false) }
      it { should belong_to(:model) }
    end
  end

  context 'validation' do
    let(:model_type) { FactoryGirl.build(:model_type) }

    it 'requires name' do
      expect(model_type).to validate_presence_of(:name)
    end

    it 'requires model_type_slug' do
      expect(model_type).to validate_presence_of(:model_type_slug)
    end

    it 'requires model_type_code' do
      expect(model_type).to validate_presence_of(:model_type_code)
    end

    it 'requires base_price' do
      expect(model_type).to validate_presence_of(:base_price)
    end

    it 'requires belong to model' do
      expect(model_type).to belong_to(:model)
    end
  end
end
