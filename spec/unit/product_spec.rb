require 'spec_helper'

describe Product do
  context '#attributes' do
    it 'should respond to name' do
      item = Product.new('item_name', 666, true)

      expect(item.name).to eq('item_name')
      expect(item.price_before_tax).to eq(666)
      expect(item.imported).to eq(true)
    end
  end

  context '#price' do
    it 'should return price with sales tax' do
      item = Product.new('non exempt item', 10, false)

      expect(item.price_after_tax).to eq(11)
    end

    it 'should return price with import duty' do
      item = Product.new('book', 10, true)

      expect(item.price_after_tax).to eq(10.5)
    end

    it 'should round the price' do
      item = Product.new('non exempt item', 10.4, false)

      expect(item.price_after_tax).to eq(11.44)
    end
  end

  context '#to_s' do
    it 'should be able to represent an imported product' do
      product = Product.new('non exempt item', 10, true)

      expect(product.to_s).to eq('imported non exempt item : 11.5')
    end

    it 'should be able to represent a non-imported product' do
      product = Product.new('non exempt item', 10, false)

      expect(product.to_s).to eq('non exempt item : 11.0')
    end
  end
end