
# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Solution using iterator only
=begin
def shortest_string(list_of_words)
  index0 = list_of_words[0]
  index0.to_s
  list_of_words.each {|x|
    if index0.length >= x.length
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

def shortest_string(list_of_words)
  sorted_words = list_of_words.sort_by {|x| "#{x}".length}
  return sorted_words.first
end