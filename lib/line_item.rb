class LineItem
  def initialize(quantity, item)
    @quantity = quantity
    @item = item
  end

  def to_s
    "#{@quantity} #{@item}"
  end
end