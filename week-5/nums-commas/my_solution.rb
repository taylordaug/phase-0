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

#Refactored Solution



=begin
Reflection
What was your process for breaking the problem down?
I initially thought about how easy it would be to access parts of the number if each character of the number was stored in a separate array. That way, I could access the index for whatever number/position I needed to add a comma in front of, and I'd be able to count how long a a number was.

What different approaches did you consider?
If the

Was your pseudocode effective in helping you build a successful initial solution?


What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?


How did you initially iterate through the data structure?
Initially, I thought I could just place commas after the 3rd number from the end and after the 6th number from the end. These were accessed by calling those indices in if statements depending on how long the number was and using .insert and inserting a comma in the indices right in front of those numbers.

Do you feel your refactored solution is more readable than your initial solution? Why?


=end