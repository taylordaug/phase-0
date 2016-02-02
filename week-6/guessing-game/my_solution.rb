# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: integer
# Output:
# Steps:
#

# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    if @number == @answer
      return :correct
    elsif @number > @answer
      return :high
    else #@number < @answer
      return :low
    end
  end

  def solved?
    if @number == @answer
      return true
    else
      return false
    end
  end

end

=end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    if @number == @answer
      :correct
    elsif @number > @answer
      :high
    else
      :low
    end
  end

  def solved?
    if @number == @answer
      return true
    else
      return false
    end
  end

end





=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Objects inherit behaviors (methods) from their classes. All objects in the same class act alike and follow a certain blueprint of activities. When you define a class with instance variables and methods, you are saying to pass these same behaviors to every instance of the class, and every instance of the class is an object. A real world object shares a state and an action. Instance variables represent the states and methods represent the actions the object will take on.


When should you use instance variables? What do they do for you?
Instance variables can be used in the methods throughout one instance of an entire class. You'd use these to carry over values/results of certain variables over to other methods in the class. This allows for transfer of information between methods in a class without taking the method as an argument.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is how Ruby decides how to progress through your program. Using if, elsif, and else, allows you to execute certain things based on if a case is true. Using a case statement is similar, but allows your code to follow even more "when" branches in a simpler format. I had a little difficult with my if statment in the solved? method because I was trying to return something based on the result of the previous method. Instead, I used two instance variables @answer and @guess and branched my if statement from there.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are immutable, meaning they cannot be changed. They retain their value throughout the class and never change. Returning these symbols ensures you are returning the same object since symbols are unique and have the same object id. Symbols stay in memory throughout the program's operation, and aren't marked for destruction like strings are. This is very beneficial because it allows your program to run more efficiently, because Ruby isn't constantly looking for, creating, and storing new objects in its memory.

=end