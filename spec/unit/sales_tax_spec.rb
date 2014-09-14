require 'spec_helper'

describe SalesTax do
  context '#amount' do
    context 'for exempt products' do
      it 'should return 0' do
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'book')).amount).to eq(0)
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'book cover')).amount).to eq(0)

        expect(SalesTax.new(FactoryGirl.build(:product, name: 'chocolate')).amount).to eq(0)
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'chocolate bar')).amount).to eq(0)

        expect(SalesTax.new(FactoryGirl.build(:product, name: 'pill')).amount).to eq(0)
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'headache pills')).amount).to eq(0)
      end
    end

    context 'for non exempt products' do
      it 'should return the sales tax amount' do
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'taxable product', price_before_tax: 10)).amount).to eq(1)
      end
    end

    context 'rounding' do
      it 'should round up to the nearest 0.05' do
        expect(SalesTax.new(FactoryGirl.build(:product, name: 'taxable product', price_before_tax: 10.44)).amount).to eq(1.05)
      end
    end
  end
end