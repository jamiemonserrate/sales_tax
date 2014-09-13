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

      shopping_basket.add(Item.new('asd', 123))

      expect(shopping_basket.print_receipt).to eq('1 asd : 123')
    end
  end
end
