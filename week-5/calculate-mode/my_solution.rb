# Calculate the mode Pairing Challenge

# I worked on this challenge with Marti O-H and Jones Melton.

# I spent 1 hour on this challenge.

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



=begin
4. Reflection
Which data structure did you and your pair decide to implement and why?
We created a new hash with the array values. This was so we could store the number of occurences of certain numbers. The key was the number, and the value translated to the number of occurrences. We iterated over the array twice, once to create the hash with the default value 0, and once to add 1 to the value every time the key occurred.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?


What issues/successes did you run into when translating your pseudocode to code?
We had a difficult time returning the values once we found the highest value (which corresponded to )

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?


=end