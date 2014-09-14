class Float
  def round_to_nearest(factor)
    rounding_coefficient = 1 / factor
    (self * rounding_coefficient).ceil / rounding_coefficient
  end
end