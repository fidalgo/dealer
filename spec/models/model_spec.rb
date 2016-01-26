require 'rails_helper'

RSpec.describe Model, type: :model do
  it 'should have valid factory' do
    expect(FactoryGirl.build(:organization)).to be_valid
  end

  context 'db' do
    context 'indexes' do
      it { should have_db_index(:organization_id) }
    end

    context 'columns' do
      it { should have_db_column(:name).of_type(:string).with_options(null: false) }
      it { should have_db_column(:model_slug).of_type(:string).with_options(null: false) }
      it { should belong_to(:organization) }
    end
  end

  context 'validation' do
    let(:model) { FactoryGirl.build(:model) }

    it 'requires name' do
      expect(model).to validate_presence_of(:name)
    end

    it 'requires model_slug' do
      expect(model).to validate_presence_of(:model_slug)
    end

    it 'requires belong to organization' do
      expect(model).to belong_to(:organization)
    end
  end
end
