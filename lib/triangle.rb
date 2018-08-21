class Triangle
  #attr_accesor :equilateral, :isosceles, :scalene

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 == @l2 == @l3
      :equilateral
    end
  
  end
end
