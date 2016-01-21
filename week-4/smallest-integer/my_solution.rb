
# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Solution with each only
=begin
def smallest_integer(list_of_nums)
  #set variable to first index in array as starting point
  index1 = list_of_nums[0]
  #compare each index to each integer in array
  list_of_nums.each {|x|
  #if
  if index1 >= x
    index1 = x
  end
  }
  #if first index number is greater than or equal to integer in question, first index number takes on that new number that is smaller
  if index1 == ""
    return nil
  else
    return index1
  end
end
=end

#Refactored Solution
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  list_of_nums.first
end