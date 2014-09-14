require 'bigdecimal'

class Float
  def round_to_nearest(factor)
    rounding_coefficient = BigDecimal.new(1 / BigDecimal.new(factor, 1))
    (rounding_coefficient * self).ceil / rounding_coefficient
  end
end