# Pad an Array

# I worked on this challenge Tori Huang.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? array, integer, value (any object or empty)
# What is the output? (i.e. What should the code return?) new array
# What are the steps needed to solve the problem?

=begin
1. Compare length of array to minimum value
2. IF array length equals the min value we RETURN the array
3. ELSE array length less than minimum value, we add the pad
4. Create the pad as a new array that is the minimum value - length of the array, filled with whatever value sent
5. CONCATENATE the pad array on to the original array
=end

# 1. Initial Solution


def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    return array.concat(Array.new(difference, value))
  end
end

def pad(array, min_size, value = nil)
  difference = min_size - array.length
  if difference <= 0
    new_array = []
    for i in 0...array.length
      puts i
      new_array.push(array[i])
    end
    return new_array
  else
    new_array = Array.new(min_size, value)
    for i in 0...array.length
      puts i
      new_array[i] = array[i]
    end
    return new_array
  end
end



=begin

def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  if difference <= 0
    new_array = []
    for i in 0...array.length
      puts i
      new_array.push(array[i])
    end
    return new_array
  else
    new_array = Array.new(min_size, value)
    for i in 0...array.length
      puts i
      new_array[i] = array[i]
    end
    return new_array
  end
end

array = [1,2,3]
pad(array, 5, "apple")



puts "pad!"
array = [1,2,3]
puts array

pad!(array, 5, "apple")
puts array

puts "pad"
array = [1,2,3]
puts array

pad(array, 5, "apple")
puts array
=end

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  new_array = array.clone
  if difference <= 0
    return new_array
  else
    return new_array.concat(Array.new(difference,value))
  end
end
=begin
# 4. Reflection

Were you successful in breaking the problem down into small steps?
Yes - we knew we needed to either create new arrays and push values from the old arrays into new ones, or just alter the exisiting array. We needed to find the difference between the length of the array and the minimum value, and from there create an "if" statement. There were two cases, the minimum length could be smaller than the array length, or the minimum length could be larger.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We were able to translate it. We put the method "concat" in our pseudocode, so that forced us to use that which was fine in the end, but altered the original data structure, so our method didn't behave like we thought it would and it caused some confusion. If we hadn't put that method there, we may have researched to find one that didn't alter the data structure in the first place.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our solution to the "pad" method we realized was actually the solution for the "pad!" method. We were altering the original array without realizing it by using concat. Concat actually changes the array by adding the new elements to the original, and then taking on those as part of itself. To preserve the original array, we had to define a new array immediately and then pass values of the old array into the new one, or simply clone the old array into a new one.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes! Instead of our loop trying to pass in the values of the array to the new array at every index, we could use .clone to clone the original array and store it as a new one.

How readable is your solution? Did you and your pair choose descriptive variable names?
We could've been better with descriptive variable names, but I think ours make sense. We picked things like "new_array" which helped us know that was the new array we were creating so we didn't touch the original.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods essentially "destroy" the original by taking it over with something new in it's place. If you print the data structure out before and after, it is different after. Something that is non-destructive does not change the original, so if you were to print it out before and after executing the method, it would not be altered.

=end