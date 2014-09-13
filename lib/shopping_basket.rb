class ShoppingBasket
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def print_receipt
    receipt = []
    @items.each do |item|
      receipt << "1 #{item.name} : #{item.price}"
    end
    receipt.join('\\n ')
  end
end