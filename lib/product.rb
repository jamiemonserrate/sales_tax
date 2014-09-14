class Product
  attr_reader :name, :price_before_tax

  def initialize(name, price_before_tax)
    @name = name
    @price_before_tax = price_before_tax
  end

  def price_after_tax
    round price_before_tax + sales_tax
  end

  private

  def sales_tax
    SalesTax.new(self).amount
  end

  def round(amount)
    amount.round(2)
  end
end