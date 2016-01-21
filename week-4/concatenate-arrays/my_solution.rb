# Concatenate Two Arrays

# I worked on this challenge by myself.


# Initial Solution
=begin
def array_concat(array_1, array_2)
  concat_array = array_1 + array_2
  return concat_array
end
=end

# Refactored Solution
def array_concat(array_1, array_2)
  array_1.concat(array_2)
end