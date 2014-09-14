class LineItem
  def initialize(quantity, product)
    @quantity = quantity
    @product = product
  end

  def taxes
    @product.taxes * @quantity
  end

  def price_after_tax
    @product.price_after_tax * @quantity
  end

  def to_s
    "#{@quantity} #{@product}"
  end
end