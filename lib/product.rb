class Product
  attr_reader :name, :price_before_tax, :imported

  def initialize(name, price_before_tax, imported)
    @name = name
    @price_before_tax = price_before_tax
    @imported = imported
  end

  def price_after_tax
    round price_before_tax + sales_tax + import_duty
  end

  def to_s
    "#{imported ? 'imported ' : ''}#{name} : #{price_after_tax}"
  end

  private

  def sales_tax
    SalesTax.new(self).amount
  end

  def import_duty
    ImportDuty.new(self).amount
  end

  def round(amount)
    amount.round(2)
  end
end