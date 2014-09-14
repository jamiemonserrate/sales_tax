class LineItem
  def initialize(quantity, product)
    @quantity = quantity
    @product = product
  end

  def sales_tax
    @product.sales_tax * @quantity
  end

  def price_after_tax
    @product.price_after_tax * @quantity
  end

  def to_s
    "#{@quantity} #{@product}"
  end
end