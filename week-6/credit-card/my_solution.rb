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








# Reflection