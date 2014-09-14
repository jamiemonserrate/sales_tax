require 'spec_helper'

describe 'SalesTax' do
  it 'test case #1' do
    shopping_basket = ShoppingBasket.new

    shopping_basket.add(1, Product.new('book', 12.49))
    shopping_basket.add(1, Product.new('music CD', 14.99))
    shopping_basket.add(1, Product.new('chocolate bar', 0.85))

    expect(shopping_basket.print_receipt).to eq('1 book : 12.49\\n 1 music CD : 16.49\\n 1 chocolate bar : 0.85')
  end

  it 'test case #2' do
    shopping_basket = ShoppingBasket.new

    shopping_basket.add(1, Product.new('imported box of chocolates', 10.0))
    shopping_basket.add(1, Product.new('imported bottle of perfume', 47.5))

    expect(shopping_basket.print_receipt).to eq('1 imported box of chocolates : 10.5\\n 1 imported bottle of perfume : 54.65')
  end

  it 'test case #3' do
    shopping_basket = ShoppingBasket.new

    shopping_basket.add(1, Product.new('imported bottle of perfume', 27.99))
    shopping_basket.add(1, Product.new('bottle of perfume', 18.99))
    shopping_basket.add(1, Product.new('packet of headache pills', 9.75))
    # shopping_basket.add(1, Product.new('box of imported chocolates', 11.25))

    expect(shopping_basket.print_receipt).to eq('1 imported bottle of perfume : 32.19\\n 1 bottle of perfume : 20.89\\n 1 packet of headache pills : 9.75')
  end
end