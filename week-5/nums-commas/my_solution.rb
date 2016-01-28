=begin
Input: positive integer
Output: that integer separated with a comma as a string IF necessary, if not just return the integer as a string

Steps:
Convert positive integer to a string
Store string in array
Split each character into an array
Count how many characters are in the string
IF the length of the string < 4, RETURN the string
ELSE count from the end of string 3 places, place a comma after 3rd index from back
=end


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