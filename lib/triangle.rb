require "pry"



class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
   
  end 

  def kind
    triangle? 
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else :scalene 
    end
  end



  def triangle?
    tri = [(a + b > c), (b + c > a),(a + c > b )]
    tri.include?(false) || tri.include?(0)
    raise TriangleError if tri.include?(false)
  end 
    


  
  class TriangleError < StandardError
  end



end
