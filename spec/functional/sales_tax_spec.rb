require 'spec_helper'

describe 'SalesTax' do
  it 'test case #1' do
    shopping_basket = ShoppingBasket.new

    shopping_basket.add(1, Item.new('book', 12.49))
    shopping_basket.add(1, Item.new('music CD', 14.99))
    shopping_basket.add(1, Item.new('chocolate bar', 0.85))

    expect(shopping_basket.print_receipt).to eq('1 book : 12.49\\n 1 music CD : 16.49\\n 1 chocolate bar : 0.85')
  end
end