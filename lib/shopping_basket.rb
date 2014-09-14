class ShoppingBasket
  def initialize
    @line_items = []
  end

  def add(quantity, product)
    @line_items << LineItem.new(quantity, product)
  end

  def receipt
    all_line_items_in_cart + total_of_sales_tax + grand_total
  end

  private

  def all_line_items_in_cart
    @line_items.collect(&:to_s).join('\\n ')
  end

  def total_of_sales_tax
    "\\n Sales Taxes : #{@line_items.collect(&:taxes).reduce(:+).to_f}"
  end

  def grand_total
    "\\n Total : #{@line_items.collect(&:price_after_tax).reduce(:+).to_f}"
  end
end