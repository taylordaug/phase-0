#Full name greeting challenge:

puts "Hello there! Please type your first name:"
first_name=gets.chomp

puts "What\'s your middle name:"
middle_name=gets.chomp

puts "What\'s your last name:"
last_name=gets.chomp

puts "Pleased to meet you " + first_name + " " + middle_name + " " + last_name + "!"

#Bigger, better favorite number challenge:

puts "Hello! What\'s your favorite number in the whole world?"

fav_num=gets.chomp
better_num=fav_num.to_i + 1
better_num=better_num.to_s

puts "Okay, but I think " + better_num + " is a bigger, better number, wouldn't you agree? I think that should be your new favorite :)"

#Format address challenge link: https://github.com/taylordaug/phase-0/blob/master/week-4/address/5-format-address/my_solution.rb

#Math methods challenge link: https://github.com/taylordaug/phase-0/blob/master/week-4/math/6-math-methods/my_solution.rb

# Reflection
=begin
How do you define a local variable?
Use one "=" like this:

  first_name = Taylor

The name of this variable is "first_name". The convention for naming local variables is to use all lowercase letters and separate words with an underscore. The variable changes as you redefine it. It will take on the value of whatever it is defined as most recently.

How do you define a method?
Use the syntax:

  def method(arguments)
      body
  end

The "def" defines the method as whatever you have it do in the body. In the body, write what you want the method to do. Finish defining the method by closing it with an "end". Make sure you use a descriptive name for the method that relates to what it is doing. You may or may not have arguments, but an argument is what the method takes. An example would be:

  def a_plus_b(a, b)
      a + b
  end

When calling this method, you'd specify which arguments it would take, by typing:

  a_plus_b(4, 9)

and ruby would return:

13


What is the difference between a local variable and a method?
A local variable is something you define as something else - this is called assignment. It is an object. A method is the action the object will take. A method takes a variable and returns something else. You call a method on an object in order for something to happen.

How do you run a ruby program from the command line?
You type:

ruby program.rb

using the file name of the ruby program you just created.

How do you run an RSpec file from the command line?
You type:

 rspec filename_spec.rb

 using the rspec file name you want to test against.

What was confusing about this material? What made sense?
I got tripped up on the address formatting challenge because i was trying to use "puts" to return the address. With help, I realized that what I need to do was "return" because returning something allows the program to run, it doesn't just send something to the output. When you use "puts" you are giving the user an output, which in this case we didn't need, we just wanted to run the program internally. I am still getting the hang of make sure everything is a string before printing something out and figuring out the correct number of spaces and + signs I need so things look like a normal sentence.
=end