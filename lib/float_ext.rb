require 'bigdecimal'

class Float
  def round_to_nearest(factor)
    rounding_coefficient = BigDecimal.new(1 / BigDecimal.new(factor, 1))
    (rounding_coefficient * self).round / rounding_coefficient
  end
end