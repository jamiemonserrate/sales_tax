require 'spec_helper'

describe LineItem do
  context '#to_s' do
    it 'should know how to print a line item' do
      expect(LineItem.new(1, Product.new('some book', 10)).to_s).to eq('1 some book : 10.0')
    end
  end

  context '#taxes' do
    it 'should calculate the total of taxes for the given quantity' do
      expect(LineItem.new(2, Product.new('imported wine', 10)).taxes).to eq(3.0)
    end
  end

  context '#price_after_tax' do
    it 'should calculate the total price after tax for the given quantity' do
      expect(LineItem.new(2, Product.new('imported wine', 10)).price_after_tax).to eq(23.0)
    end
  end
end