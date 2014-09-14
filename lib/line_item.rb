class LineItem
  def initialize(quantity, item)
    @quantity = quantity
    @item = item
  end

  def to_s
    "#{@quantity} #{@item.name} : #{@item.price_after_tax}"
  end
end