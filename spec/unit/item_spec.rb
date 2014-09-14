require 'spec_helper'

describe Item do
  context '#attributes' do
    it 'should respond to name' do
      item = Item.new('item_name', 666)

      expect(item.name).to eq('item_name')
      expect(item.price_before_tax).to eq(666)
    end
  end

  context '#price' do
    it 'should return price with sales tax' do
      item = Item.new('non exempt item', 10)

      expect(item.price_after_tax).to eq(11)
    end

    it 'should round the price' do
      item = Item.new('non exempt item', 10.4)

      expect(item.price_after_tax).to eq(11.44)
    end
  end
end