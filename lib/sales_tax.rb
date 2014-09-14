class SalesTax
  SALES_TAX_RATE = 0.1

  def initialize(item)
    @item = item
  end

  def amount
    return 0 if is_exempt?
    @item.price_before_tax * SALES_TAX_RATE
  end

  private
  def is_exempt?
    @item.name.include?('book') || @item.name.include?('chocolate')
  end
end