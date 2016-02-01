
# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: one string
# Steps:
# IF array has nothing in it, raise ArgumentError
# number of labels (length of array) = number of sides
# randomly return (shuffle) one of the labels


# Initial Solution
=begin
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("No labels present.")
    end
    @sides = labels.length
    @roll = labels.shuffle!
  end

  def sides
    @sides
  end

  def roll
    @roll.sample
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("No labels present.")
    end
    @sides = labels.length
    @roll = labels #didn't need to shuffle, shuffle/sample both achieve randomization
  end

  def sides
    @sides
  end

  def roll
    @roll.sample
  end
end


=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
Originally I was returning the correct strings, but as an array within an array. I had to research methods to get rid of the subarrays and return one final array. The only concept that changed was instead of counting the number of sides based on the number of numbers passed in, we just had to count the length of the array of strings to determine how many strings were initially passed in. Once I knew the length of that array, that told how many sides there must be.

What does this exercise teach you about making code that is easily changeable or modifiable?
Initializing the instance variables for side and roll help make sure they follow the same formula each time. If we wanted to change that formula, we only have to change the instance variable in the initialize method one time to change it for every single new die created, since each new object will take on these characteristics. I tried to pick one sample in the initialization step, but realized this comes later with the roll method because the selection of the label doesn't happen until the roll actually happens.

What new methods did you learn when working on this challenge, if any?
Yes - since I kept returning the array of arrays and not just one flat array, I tried using .flatten!, but that didn't seem to get rid of the subarrays for some reason. I also tried using .join, but that joined all the letters together in a string instead of joining the subarrays into one array. I found the method .sample which selects one random element from the array and this is what I wanted.

What concepts about classes were you able to solidify in this challenge?
I created one large Die class, and each time the class is called with .new, a new object is created following all stipulations set forth by the methods in the class it is derived from. The class is the blueprint, with each method telling the new object what to do. You only have to write these rules/methods once in the class, and they will be employed in every single object that derives from that class.

=end
