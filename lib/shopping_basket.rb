class ShoppingBasket
  def initialize
    @line_items = []
  end

  def add(quantity, item)
    @line_items << LineItem.new(quantity, item)
  end

  def print_receipt
    @line_items.collect(&:to_s).join('\\n ')
  end
end