# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

=begin
Input: positive integer
Output: that integer separated with a comma as a string IF necessary, if not just return the integer as a string

Steps:
Convert positive integer to a string
Store string in array
Split each character in array into separate array inside array
Count how many characters are in the string
IF the length of the string < 4, RETURN the string
ELSE count from the end of string 3 places, place a comma after 3rd index from back (in -4th index)
Adjust for numbers over 7 characters that need two commas by adding comma in the -4 and -7 index
=end

#Initial Solution
=begin
def separate_comma(number)
  number = number.to_s
  array = number.split(//)
  num_length = array.length
  if num_length < 4
    return number
  end
  if num_length >=4 && num_length < 7
    array.insert(-4,",")
  else num_length >= 7
    array.insert(-4,",")
    array.insert(-8,",")
  end

new_array = array.join

end
=end
#Refactored Solution

def separate_comma(number)
  number = number.to_s
  array = number.split(//)

  if array.length < 4
    return number
  else
  counter = -1
    array.each do |x|
      x[counter]
      counter -= 1
      if counter % 4 == 0
      array.insert(counter,",")
      end
    end
    if array[0] == ","
      array.delete_at(0)
    end
  end

p array = array.join

end

=begin
Reflection
What was your process for breaking the problem down?
I initially thought about how easy it would be to access parts of the number if each character of the number was stored in a separate array. That way, I could access the index for whatever number/position I needed to add a comma in front of, and I'd be able to count how long a number was.

What different approaches did you consider?
I considered iterating through the array and using a counter to find the indices I needed, but this seemed too complicated. I settled on calling the indices directly and replacing them with commas for my initial solution. After I did this, I realized my solution wouldn't scale to larger numbers, so I went back to my iteration/counter method for my refactored solution.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, I was able to convert the number to a string, get my array, and then manipulate the array from there. That gave me a clear starting point.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used .delete_at to delete a value at the first index if it happened to be a ",". I used .join to join all arrays inside the array into one array, which created one large number in a string. The method .insert allows you to specify a specific thing to insert at a given index in the array. And .split divides the array into an subarrays based on a delimiter that specifies where to break apart the arrays. The delimeter looks like this // and you can put a space, comma, period, etc., inside to specify where the program should look to make the split between characters.

How did you initially iterate through the data structure?
Initially, I thought I could just place commas after the 3rd number from the end and after the 6th number from the end. These were accessed by calling those indices in if statements depending on how long the number was and using .insert and inserting a comma in the indices right in front of those numbers. I realized this wouldn't scale for larger numbers, so I needed to iterate through the entire array and place a comma if the index was divisible by 4 starting from the last index. This put a comma after every 3rd character. This caused a comma to end up at the beginning of the string in some cases, so I entered an additional if statement to get rid of the first index if it contained only a comma.

Do you feel your refactored solution is more readable than your initial solution? Why?
My refactored soluton definitely scales to larger numbers that weren't included in the original rspec test, so I feel it is a more authentic solution. I think it makes more sense using the counter to iterate through the indices and placing commas in values where the counter is divisible by 4.

=end