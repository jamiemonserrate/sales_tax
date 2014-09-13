require 'spec_helper'

describe 'SalesTax' do
  it 'test case #1' do
    shopping_basket = ShoppingBasket.new

    shopping_basket.add(Item.new('book', 12.49))

    expect(shopping_basket.print_receipt).to eq('1 book : 12.49')
  end
end