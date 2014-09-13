require 'spec_helper'

describe Item do
  context 'attributes' do
    it 'should respond to name and price' do
      item = Item.new('name_of_item', 666)

      expect(item.name).to eq('name_of_item')
      expect(item.price).to eq(666)
    end
  end
end