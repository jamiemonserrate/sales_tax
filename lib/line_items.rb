class LineItems
  def initialize
    @line_items = []
  end

  def add(line_item)
    @line_items << line_item
  end

  def lines
    @line_items.collect(&:to_s).join("\n")
  end

  def sales_tax
    @line_items.collect(&:sales_tax).reduce(:+)
  end

  def total
    @line_items.collect(&:price_after_tax).reduce(:+)
  end
end