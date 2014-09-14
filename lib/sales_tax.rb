class SalesTax
  SALES_TAX_RATE = 0.1

  def initialize(product)
    @product = product
  end

  def amount
    return 0 if is_exempt?
    round @product.price_before_tax * SALES_TAX_RATE
  end

  private
  def is_exempt?
    @product.name.include?('book') || @product.name.include?('chocolate')
  end

  def round(amount)
    amount.round_to_nearest(0.05)
  end
end