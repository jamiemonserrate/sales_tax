class ShoppingBasket
  def initialize
    @line_items = []
  end

  def add(quantity, product)
    @line_items << LineItem.new(quantity, product)
  end

  def print_receipt
    @line_items.collect(&:to_s).join('\\n ')
  end
end