require 'spec_helper'

describe Product do
  context '#attributes' do
    it 'should respond to name' do
      product = Product.new('product_name', 666, true)

      expect(product.name).to eq('product_name')
      expect(product.price_before_tax).to eq(666)
      expect(product.imported).to eq(true)
    end
  end

  context '#price' do
    it 'should return price with sales tax' do
      product = Product.new('non exempt product', 10, false)

      expect(product.price_after_tax).to eq(11)
    end

    it 'should return price with import duty' do
      product = Product.new('book', 10, true)

      expect(product.price_after_tax).to eq(10.5)
    end

    it 'should round the price' do
      product = Product.new('non exempt product', 10.4, false)

      expect(product.price_after_tax).to eq(11.44)
    end
  end

  context '#to_s' do
    it 'should be able to represent an imported product' do
      product = Product.new('non exempt product', 10, true)

      expect(product.to_s).to eq('imported non exempt product : 11.5')
    end

    it 'should be able to represent a non-imported product' do
      product = Product.new('non exempt product', 10, false)

      expect(product.to_s).to eq('non exempt product : 11.0')
    end
  end
end