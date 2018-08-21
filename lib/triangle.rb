class Triangle
  #attr_accesor :equilateral, :isosceles, :scalene

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if is_illegal?
      raise TriangleError
    end

    if @l1 == @l2 && @l2 == @l3
      :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
      :isosceles
    else
      :scalene
    end
  end

  def is_illegal?
    (@l1 <= 0 || @l2 <= 0 || @l3 <= 0) ||
    (@l1 < @l3 && @l2 < @l3 && @l1 == @l2) ||
    (@l1 < @l2 && @l3 < @l2 && @l1 == @l3) ||
    (@l1 > (@l2 + @l3))
  end

  class TriangleError < StandardError
  end
end
