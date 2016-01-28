# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: create new object in Die class with integer number of sides
# Output: integer between 1 and number of sides
# Steps:
# Take number of sides and store in instance variable sides
#


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides.to_i > 1
      raise ArgumentError.new("Please use a number greater than 0.")
      end
    @sides = sides.to_i
  end

  def sides
    return @sides
  end

  def roll
    return Random.new.rand(1..@sides)
  end
end

# 3. Refactored Solution







# 4. Reflection