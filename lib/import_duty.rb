class ImportDuty
  IMPORT_DUTY = 0.05

  def initialize(product)
    @product = product
  end

  def amount
    return 0 if is_exempt?
    round (@product.price_before_tax * IMPORT_DUTY)
  end

  private
  def is_exempt?
    !@product.imported
  end

  def round(amount)
    rounding_coefficient = BigDecimal.new(1 / rounding_to_nearest_factor)
    (rounding_coefficient * amount).round / rounding_coefficient
  end

  def rounding_to_nearest_factor
    BigDecimal.new('0.05', 1)
  end
end