require 'spec_helper'

describe LineItem do
  context '#to_s' do
    it 'should know how to print a line item' do
      expect(LineItem.new(1, Product.new('some book', 10, false)).to_s).to eq('1 some book : 10.0')
    end
  end
end