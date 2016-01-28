# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: create new object in Die class with integer number of sides
# Output: integer between 1 and number of sides
# Steps:
# Take number of sides and store in instance variable sides
#


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    unless sides.to_i > 1
      raise ArgumentError.new("Please use a number greater than 0.")
      end
    @sides = sides.to_i
  end

  def sides
    return @sides
  end

  def roll
    return Random.new.rand(1..@sides)
  end
end
=end

# 3. Refactored Solution


class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Please use a number greater than 0.")
      end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

=begin
# 4. Reflection
What is an ArgumentError and why would you use one?
You implement an ArgumentError when the user passes in the incorrect number of arguments or an argument that is not within the bounds of how the method works. For example, if you needed a positive integer argument, and the user passed in a negative integer, they'd get an ArgumentError that would tell them to pass in a positive integer. Likewise, if a user passed in 2 arguments when the method only took one, they'd get an ArgumentError telling them to pass only one argument.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I learned the method "rand" that takes an integer as a parameter. This generates a random number between a range that you specify as an argument. The syntax is as follows: rand(lower_range..higher_range). You can use rand(number) to generate any number inthe range from 0 to that number, but in this case we wanted to omit 0, so had to specify the lower range was 1. If you don't get rand a parameter, it returns a random float greater than 0.0 and less than 1.0.

What is a Ruby class?
A class is like a blueprint, it tells everything inside it how to act and maps it out. A class is an object itself, but also has objects inside it that are called instances. Every object is an instance of some class. A class contains a collection of method definitions. A method defined in the class automatically trickles down to each object in the class. This is helpful because you can use a class to create many objects that take on the characteristics of that class.

Why would you use a Ruby class?
You'd use a class to group specific behaviors, or methods, into bundles so you can quickly create a bunch of objects that behave the same way. You can initialize a class to always do the same exact thing every time a new object is created, which saves time and is cleaner.

What is the difference between a local variable and an instance variable?
An instance variable is like a storage and retrieval mechanism for values. This means you don't have to hard code values for specific objects - they are fluid and you have a way to tell different objects that they have different values. A local variable is defined once and can ONLY be used inside the method in which it is defined. An instance variable can be used anywhere within the class within the method it is defined inside, meaning you can use it in ANY method inside the class - it carries over. While a local variable is denoted by lower case letters and underscores (local_variable), instance variables are denoted by a single @ sign - @instance_variables.

Where can an instance variable be used?
Anywhere inside the class of the method it is defined inside. An instance variable carries over between methods in the class.

=end