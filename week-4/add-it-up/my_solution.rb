# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Mike London.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Sum of numbers
# Steps to solve the problem.
=begin
1. iterate over each number in array
2. add sum of first two numbers to number in the 3, 4, 5th numbers
3.
store values in variable  convert strings to integers.
add each index to the next retaining same  value



=end

# 1. total initial solution
def total(array)
  i = 0
  a = 0
  array.each { |a| i += a.to_i }
  return i
end

# 3. total refactored solution
def total(array)
  i = 0
  array.each { |a| i += a.to_i }
  return i
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: each string joined in a sentence
# Steps to solve the problem.
=begin
iterate through and add each word to the string
add period at the end

=end
# 5. sentence_maker initial solution

def sentence_maker(strings)
  i=""
  strings.each {|x| i += " " + "#{x}"}
  i[0] = ""
  i[0] = i[0].capitalize
  return i + "."
end


# 6. sentence_maker refactored solution
