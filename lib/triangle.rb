class Triangle
  #attr_accesor :equilateral, :isosceles, :scalene

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      raise TriangleError
    elsif @l1 < @l3 && @l2 < @l3 && @l1 == @l2
      raise TriangleError
    elsif @l1 < @l2 && @l3 < @l2 && @l1 == @l3
      raise TriangleError
    elsif @l1 > @l2 && @l2 > @l3 && @l1 > @l3
    end
    if @l1 == @l2 && @l2 == @l3
      :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
