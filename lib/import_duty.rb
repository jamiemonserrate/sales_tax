class ImportDuty
  IMPORT_DUTY = 0.05

  def initialize(item)
    @item = item
  end

  def amount
    return 0 if is_exempt?
    @item.price_before_tax * IMPORT_DUTY
  end

  private
  def is_exempt?
    !@item.imported
  end
end