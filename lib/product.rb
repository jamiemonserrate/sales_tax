class Product
  attr_reader :name, :price_before_tax

  def initialize(name, price_before_tax)
    @name = name
    @price_before_tax = price_before_tax
  end

  def price_after_tax
    round price_before_tax + sales_tax
  end

  def sales_tax
    basic_sales_tax + import_duty
  end

  def to_s
    "#{name}: #{'%.02f' % price_after_tax}"
  end

  private

  def basic_sales_tax
    SalesTax.new(self).amount
  end

  def import_duty
    ImportDuty.new(self).amount
  end

  def round(amount)
    amount.round(2)
  end
end