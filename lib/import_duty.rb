class ImportDuty
  IMPORT_DUTY = 0.05

  def initialize(product)
    @product = product
  end

  def amount
    return 0 if is_exempt?
    round @product.price_before_tax * IMPORT_DUTY
  end

  private
  def is_exempt?
    !@product.name.include?('imported')
  end

  def round(amount)
    amount.round_to_nearest(0.05)
  end
end