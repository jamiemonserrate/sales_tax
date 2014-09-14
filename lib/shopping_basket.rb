class ShoppingBasket
  def initialize
    @line_items = []
  end

  def add(quantity, product)
    @line_items << LineItem.new(quantity, product)
  end

  def print_receipt
    all_line_items_in_cart + total_of_sales_tax + grand_total
  end

  private

  def all_line_items_in_cart
    @line_items.collect(&:to_s).join('\\n ')
  end

  def total_of_sales_tax
    "\\n Sales Taxes : #{@line_items.inject(0) { |sum_of_taxes, line_item| line_item.taxes + sum_of_taxes }.to_f}"
  end

  def grand_total
    "\\n Total : #{@line_items.inject(0) { |grand_total, line_item| line_item.price_after_tax + grand_total }.to_f}"
  end
end