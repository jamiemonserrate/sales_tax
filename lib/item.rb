class Item
  attr_reader :name

  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    return @price if is_exempt?
    (@price + (@price * 0.1)).round(2)
  end

  private
  def is_exempt?
    name.include?('book')
  end
end