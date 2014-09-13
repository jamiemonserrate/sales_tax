require 'spec_helper'

describe Item do
  context '#name' do
    it 'should respond to name' do
      item = Item.new('item_name', 666)

      expect(item.name).to eq('item_name')
    end
  end

  context '#price' do
    it 'should return price without sales tax if exempt' do
      item = Item.new('book that is exempt of sales tax', 10)

      expect(item.price).to eq(10)
    end

    it 'should return price with sales tax if not exempt' do
      item = Item.new('non exempt item', 10)

      expect(item.price).to eq(11)
    end

    it 'should round the price' do
      item = Item.new('non exempt item', 10.4)

      expect(item.price).to eq(11.44)
    end
  end
end