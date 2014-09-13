class ShoppingBasket
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def print_receipt
    "1 #{@items.first.name} : #{@items.first.price}"
  end
end