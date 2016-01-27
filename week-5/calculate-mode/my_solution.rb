# Calculate the mode Pairing Challenge

# I worked on this challenge with Marti and Jones.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of numbers or strings
# What is the output? Array of most frequent values (mode), if only one, returns single-element array, if none return same array (all occur with equal frequency)
# What are the steps needed to solve the problem?
# Count each

# 1. Initial Solution
# iterate through all items in the array
# create new hash with all strings as keys and set default to 0
# count how many times specific values are found
# only keep key in hash that has highest value
# push key as new array (.keys)

def mode(array)
  create_hash = {}
  array.each {|x| create_hash[x] = 0}
  array.each {|x| create_hash[x] += 1}

  p new_array = create_hash.max_by {|x,y| y
  }
  value_we_want = new_array[1]
  mode_container = []
  create_hash.each do |key, value|
    if value == value_we_want
      mode_container << key
    end
  end
return mode_container

end

mode([4,5,5,5,6,6,6])

# 3. Refactored Solution




# 4. Reflection