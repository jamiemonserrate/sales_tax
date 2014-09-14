class ImportDuty
  IMPORT_DUTY = 0.05

  def initialize(product)
    @product = product
  end

  def amount
    return 0 if is_exempt?
    @product.price_before_tax * IMPORT_DUTY
  end

  private
  def is_exempt?
    !@product.imported
  end
end