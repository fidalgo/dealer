require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'should have valid factory' do
    expect(FactoryGirl.build(:organization)).to be_valid
  end

  context 'db' do
    context 'columns' do
      it { should have_db_column(:name).of_type(:string).with_options(null: false) }
      it { should have_db_column(:public_name).of_type(:string).with_options(null: false) }
      it { should have_db_column(:type).of_type(:integer).with_options(null: false) }
    end
  end

  context 'validation' do
    let(:organization) { FactoryGirl.build(:organization) }

    it 'requires name' do
      expect(organization).to validate_presence_of(:name)
    end

    it 'requires public_name' do
      expect(organization).to validate_presence_of(:public_name)
    end

    it 'requires type' do
      expect(organization).to validate_presence_of(:type)
    end
  end
end
