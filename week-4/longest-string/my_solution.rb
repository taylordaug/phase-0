# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


#Solution using iterator (each) only
=begin
def longest_string(list_of_words)
  index0 = list_of_words[0]
  list_of_words.each {|x|
    if index0.length <= x.length
      index0 = x
    end
  }
  if index0 == ""
    return ""
  else
    return index0
  end
end
=end

#Refactored solution
def longest_string(list_of_words)
  sorted_by_length = list_of_words.sort_by {|x| "#{x}".length}
  return sorted_by_length.last
end
