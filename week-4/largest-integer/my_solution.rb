# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
=begin
def largest_integer(list_of_nums)

  index0 = list_of_nums[0]
  list_of_nums.each {|x|
    if index0 <= x
      index0 = x
    end
  }

  if index0 == ""
    return nil
  else
    return index0
  end
end
=end

# Refactored Solution
def largest_integer(list_of_nums)
  sorted_integers = list_of_nums.sort!
  return sorted_integers.last
end


