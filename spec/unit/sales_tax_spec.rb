require 'spec_helper'

describe SalesTax do
  context '#amount' do
    context 'for exempt items' do
      it 'should return 0' do
        expect(SalesTax.new(FactoryGirl.build(:item, name: 'book')).amount).to eq(0)
        expect(SalesTax.new(FactoryGirl.build(:item, name: 'book cover')).amount).to eq(0)

        expect(SalesTax.new(FactoryGirl.build(:item, name: 'chocolate')).amount).to eq(0)
        expect(SalesTax.new(FactoryGirl.build(:item, name: 'chocolate bar')).amount).to eq(0)
      end
    end

    context 'for non exempt items' do
      it 'should return the sales tax amount' do
        expect(SalesTax.new(FactoryGirl.build(:item, name: 'taxable item', price_before_tax: 10)).amount).to eq(1)
      end
    end
  end
end