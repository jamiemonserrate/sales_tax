class ShoppingBasket
  def initialize
    @line_items = LineItems.new
  end

  def add(quantity, product)
    @line_items.add(LineItem.new(quantity, product))
  end

  def receipt
    lines + sales_tax + total
  end

  private

  def lines
    @line_items.lines
  end

  def sales_tax
    "\nSales Taxes: #{'%.02f' % @line_items.sales_tax}"
  end

  def total
    "\nTotal: #{'%.02f' % @line_items.total}"
  end
end