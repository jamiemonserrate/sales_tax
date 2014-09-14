class Product
  attr_reader :name, :price_before_tax

  def initialize(name, price_before_tax)
    @name = name
    @price_before_tax = price_before_tax
  end

  def price_after_tax
    price_before_tax + sales_tax + import_duty
  end

  def taxes
    sales_tax + import_duty
  end

  def to_s
    "#{name} : #{price_after_tax.to_f}"
  end

  private

  def sales_tax
    SalesTax.new(self).amount
  end

  def import_duty
    ImportDuty.new(self).amount
  end
end