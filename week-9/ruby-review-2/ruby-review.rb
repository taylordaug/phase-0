# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me hours.


# Pseudocode
# input: integer
# output: string of words
# Steps
# define string equivalents for single digit numbers
# iterate (each) over digits, return digits
# IF number is at index 0, multiple by ten, ELSE return number
# CASE statement for all numbers, when number print string of number


# Initial Solution

# def to_english(number)
#   if number == 100
#     print "one hundred"
#   end

#   num_array = number.to_s.split(//)
#   if num_array[0] == "1"
#     case number
#       when 11
#         print "eleven"
#       when 12
#         print "twelve"
#       when 13
#         print "thirteen"
#       when 14
#         print "fourteen"
#       when 15
#         print "fifteen"
#       when 16
#         print "sixteen"
#       when 17
#         print "seventeen"
#       when 18
#         print "eighteen"
#       when 19
#         print "nineteen"
#     end
#   else
#     if num_array.length > 1
#       digit_1 = num_array[0]
#       digit_2 = num_array[1]
#     else
#       digit_2 = num_array[0]
#     end
#   end

#   integer_1 = digit_1.to_i
#   integer_2 = digit_2.to_i

#   case integer_1
#     when 2
#       print "twenty"
#     when 3
#       print "thirty"
#     when 4
#       print "forty"
#     when 5
#       print "fifty"
#     when 6
#       print "sixty"
#     when 7
#       print "seventy"
#     when 8
#       print "eighty"
#     when 9
#       print "ninety"
#     end

#   case integer_2
#     when 1
#       print " one"
#     when 2
#       print " two"
#     when 3
#       print " three"
#     when 4
#       print " four"
#     when 5
#       print " five"
#     when 6
#       print " six"
#     when 7
#       print " seven"
#     when 8
#       print " eight"
#     when 9
#       print " nine"
#   end

# end

# to_english(98)



# Refactored Solution
# make hashes to store english with integer

def to_english(number)
  if number == 100
    print "one hundred"
  end

  num_array = number.to_s.split(//)
  if num_array[0] == "1" && num_array.length > 1
  teen_hash = {
    "ten" => 10,
    "eleven" => 11,
    "twelve" => 12,
    "thirteen" => 13,
    "fourteen" => 14,
    "fifteen" => 15,
    "sixteen" => 16,
    "seventeen" => 17,
    "eighteen" => 18,
    "nineteen" => 19
  }
 teen_hash.each do |key, value|
    if value == number
      print key
    end
  end
  else
    if num_array.length > 1
      digit_1 = num_array[0]
      digit_2 = num_array[1]
    else
      digit_2 = num_array[0]
    end
  end

  integer_1 = digit_1.to_i
  integer_2 = digit_2.to_i

  hash_1 = {
    "twenty" => 2,
    "thirty" => 3,
    "forty" => 4,
    "fifty" => 5,
    "sixty" => 6,
    "seventy" => 7,
    "eighty" => 8,
    "ninety" => 9
  }

  hash_1.each do |key, value|
    if value == integer_1
      print key + " "
    end
  end

  hash_2 = {
    "one" => 1,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9
  }

  hash_2.each do |key, value|
    if value == integer_2
      print key
    end
  end
end

to_english(10)

# Reflection

