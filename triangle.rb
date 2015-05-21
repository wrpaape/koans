# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  [a, b, c].each { |side| raise TriangleError if side <= 0 }
  unless a + b > c && a + c > b && b + c > a
    raise TriangleError
  end

  return :equilateral if is_equ?(a, b, c)
  return :isosceles if is_iso?(a, b, c)
  :scalene
end

def is_equ?(a, b, c)
  a == b && a == c ? true : false
end

def is_iso?(a, b, c)
  a == b || a == c || b == c ? true : false
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
