# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number = number.to_s
    if @number.length < 16 || @number.length > 16
      raise ArgumentError.new
    end
  end

  def check_card
    @number = @number.split('')
    @number = @number.map do |num|
      num.to_i
    end
    @number.reverse!
    @new_array = []
    @number.each_with_index do |num, index|
      if index % 2 != 0
        @new_array.push(num * 2)
      else
        @new_array.push(num)
      end
    end

    @new_array = @new_array.map do |num|
      num.to_s
    end
    @new_array = @new_array.join.split('')
    @new_array = @new_array.map do |num|
      num.to_i
    end

    if @new_array.inject(:+).to_f % 10.0 == 0.0
      p true
    else
      p false
    end
  end
end

# Refactored Solution

class CreditCard
 def initialize(number)
   @number = number.to_s
   raise ArgumentError.new unless @number.length == 16
 end

 def check_card
   @number = @number.split('').map { |num| num.to_i }.reverse!
   @new_array = []
   @number.each_with_index do |num, index|
   @new_array.push(num * 2) unless index % 2 == 0
   @new_array.push(num) unless index % 2 != 0
   end

   @new_array = @new_array.map { |num| num.to_s }.join.split('').map { |num| num.to_i }

   if @new_array.inject(:+).to_f % 10.0 == 0.0
     true
   else
     false
   end

 end
end



=begin
Reflection
What was the most difficult part of this challenge for you and your pair?
Switching between string, integer, and array methods was very confusing. We started one way and had to keep backpedaling to switch our data structure into a format that we could work with. I feel like we were going with methods that were familiar to us, and altering our data to fit what we knew how to do instead of finding methods to work with what we had.

What new methods did you find to help you when you refactored?
The method inject(:+) places a + sign in between every element in the array. .split takes a string and

What concepts or learnings were you able to solidify in this challenge?
This really made me think about which methods go with which classes and data structures.

=end