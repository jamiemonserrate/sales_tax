require 'spec_helper'

describe Product do
  context '#attributes' do
    it 'should respond to name' do
      product = Product.new('product_name', 666)

      expect(product.name).to eq('product_name')
      expect(product.price_before_tax).to eq(666)
    end
  end

  context '#price' do
    it 'should return price with sales tax' do
      product = Product.new('non exempt product', 10)

      expect(product.price_after_tax).to eq(11)
    end

    it 'should return price with import duty' do
      product = Product.new('imported book', 10)

      expect(product.price_after_tax).to eq(10.5)
    end

    it 'should round the price' do
      product = Product.new('non exempt product', 10.40)

      expect(product.price_after_tax).to eq(11.45)
    end
  end

  context '#to_s' do
    it 'should be able to represent an imported product' do
      product = Product.new('imported non exempt product', 10)

      expect(product.to_s).to eq('imported non exempt product: 11.50')
    end

    it 'should be able to represent a non-imported product' do
      product = Product.new('non exempt product', 10)

      expect(product.to_s).to eq('non exempt product: 11.00')
    end
  end

  context '#sales_tax' do
    it 'should return the total of the taxes' do
      product = Product.new('imported wine', 10)

      expect(product.sales_tax).to eq(1.5)
    end

    it 'should round the taxes' do
      product = Product.new('non exempt product', 10.40)

      expect(product.sales_tax).to eq(1.05)
    end
  end
end