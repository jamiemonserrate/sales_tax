require 'spec_helper'

describe ShoppingBasket do
  context '#add' do
    it 'should respond to add' do
      expect { ShoppingBasket.new.add(1, FactoryGirl.build(:product)) }.to_not raise_error
    end
  end

  context '#print_receipt' do
    it 'should be able to print receipt' do
      shopping_basket = ShoppingBasket.new

      shopping_basket.add(1, Product.new('book 1', 123.0))
      shopping_basket.add(1, Product.new('imported book 2', 456.0))

      expect(shopping_basket.receipt).to eq('1 book 1 : 123.0\\n 1 imported book 2 : 478.8\\n Sales Taxes : 22.8\\n Total : 601.8')
    end
  end
end
