require 'pry'
class Triangle
  # write code here
  attr_accessor :left, :right, :bottom

  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end

  def kind
    if self.is_a?(Triangle)
      begin
        if self.left <= 0 && self.right <= 0 && self.bottom <= 0
          raise TriangleError
        elsif self.left < 0 || self.right < 0 || self.bottom < 0
          raise TriangleError
        elsif self.left + self.right <= self.bottom || self.left + self.bottom <= self.right || self.right + self.bottom <= self.left
          raise TriangleError
        end
      end
      if self.left == self.right && self.left == self.bottom && self.right == self.bottom
        :equilateral
      elsif self.left == self.right || self.left == self.bottom || self.right == self.bottom
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end