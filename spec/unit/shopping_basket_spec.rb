require 'spec_helper'

describe ShoppingBasket do
  context '#add' do
    it 'should respond to add' do
      expect { ShoppingBasket.new.add(FactoryGirl.build(:item)) }.to_not raise_error
    end
  end

  context '#print_receipt' do
    it 'should be able to print receipt' do
      shopping_basket = ShoppingBasket.new

      shopping_basket.add(Item.new('book 1', 123.0))
      shopping_basket.add(Item.new('book 2', 456.0))

      expect(shopping_basket.print_receipt).to eq('1 book 1 : 123.0\\n 1 book 2 : 456.0')
    end
  end
end
