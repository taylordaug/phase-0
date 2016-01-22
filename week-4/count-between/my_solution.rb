
# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
new_array=Array.new
list_of_integers.each {|x|
  if x >= lower_bound.to_i && x <= upper_bound.to_i
     new_array << x
  end}
  return new_array.length
end



