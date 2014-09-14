class LineItem
  def initialize(quantity, product)
    @quantity = quantity
    @product = product
  end

  def to_s
    "#{@quantity} #{@product}"
  end
end