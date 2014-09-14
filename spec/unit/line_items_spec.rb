require 'spec_helper'

describe LineItems do
  context '#lines' do
    it 'should return all lines formatted' do
      line_items = LineItems.new

      line_items.add(LineItem.new(1, Product.new('wine', 10.50)))
      line_items.add(LineItem.new(2, Product.new('beer', 3.50)))

      expect(line_items.lines).to eq("1 wine: 11.55\n2 beer: 3.90")
    end
  end

  context '#sales_tax' do
    it 'should return total taxes' do
      line_items = LineItems.new

      line_items.add(LineItem.new(1, Product.new('wine', 10.50)))
      line_items.add(LineItem.new(2, Product.new('beer', 3.50)))

      expect(line_items.sales_tax).to eq(1.85)
    end
  end

  context '#total' do
    it 'should return total' do
      line_items = LineItems.new

      line_items.add(LineItem.new(1, Product.new('wine', 10.50)))
      line_items.add(LineItem.new(2, Product.new('beer', 3.50)))

      expect(line_items.total).to eq(19.35)
    end
  end
end
