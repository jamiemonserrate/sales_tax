require 'spec_helper'

describe ImportDuty do
  context '#amount' do
    context 'for non imported products' do
      it 'should return 0' do
        expect(ImportDuty.new(FactoryGirl.build(:product, name: 'some product')).amount).to eq(0)
      end
    end

    context 'for imported products' do
      it 'should return the sales tax amount' do
        expect(ImportDuty.new(FactoryGirl.build(:product, name: 'imported product', price_before_tax: 10)).amount).to eq(0.5)
      end
    end

    context 'rounding' do
      it 'should round up to the nearest 0.05' do
        expect(ImportDuty.new(FactoryGirl.build(:product, name: 'imported product', price_before_tax: 10.44)).amount).to eq(0.5)
      end
    end
  end
end