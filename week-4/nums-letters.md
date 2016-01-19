###What does puts do?
Puts simply prints to the console whatever comes after it. It is not running anything, it is just printing something out. It returns nil. It always adds a new line right after the thing it prints out.

###What is an integer? What is a float?
An integer is a number with no decimal. A float is a number with a decimal.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is more precise because it takes into account the decimal places and returns an answer to the exact decimal. Integer division actually divides two integers and rounds down to the nearest integer to find the answer. You'd use float divion for precise mathematical calculations or for something like a physics problem. You'd use this when splitting up a sum of money across employees in your company - they'd want their exact share that they worked hard to earn! You'd use integer divison in everyday life to answer questions like "How many sandwiches can I make if I need 3 pieces of cheese per sandwich, and I have 8 pieces of cheese?" The integer divison answer here yields 8/3 = 2, because I only have enough cheese to make 2 complete sandwiches, with 2 slices left over. This type of divison comes into play with things that just aren't divisible.

###Mini-challenges:
-Hours in a year
```ruby
puts 24*365
```

-Minutes in a decade
```ruby
puts (60*24)*365*10
```
###Challenge Solution Files
1. Defining Variables: https://github.com/taylordaug/phase-0/blob/master/week-4/defining-variables.rb
2. Simple String: https://github.com/taylordaug/phase-0/blob/master/week-4/simple-string.rb
3. Basic Math: https://github.com/taylordaug/phase-0/blob/master/week-4/basic-math.rb

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby is basically like a calulator. Use the +, -, *, and / to add, subtract, multiple, and divide numbers, respectively. Type numbers using your digit keys, and include the decimal (.00, 0.5, etc) if you'd like to use a float, or just the integer (4, 5, 7) if you'd like to use integers. If you use integers in your math, you'll get an integer answer. If you use floats, you'll get a float as an answer (or, the number to the closest decimal). You use "puts" or "print" in order to return the answer of the math problem to the console.

###What is the difference between integers and floats?
see answer above (question asked twice)

###What is the difference between integer and float division?
see answer above (question asked twice)

###What are strings? Why and when would you use them?
Strings can be letters, words, phrases, spaces, or simply nothing. You use strings when you want to print something to the console other than a number and you don't necessarily want to return any value.

###What are local variables? Why and when would you use them?
A local variable is something you define, or assign, in your file. You assign an object to a variable like my_name = "Taylor". Here, "my_name" is the variable, and "Taylor" is the object it is assigned to. It will take that value for the remainder of the program, unless you specify that it should change, or redefine it.

###How was this challenge? Did you get a good review of some of the basics?
I got a great review of strings, numbers, and variable declaration, and how to print these out to the console. It was great to create a file with a tiny Ruby program and then be able to use my terminal to run the program with the simple command "ruby (filename.rb)". Running the RSpec tests was super helpful - I made a dumb mistake by forgetting to put " " around my strings and got all kinds of errors, but could quickly point to the problem in my code using the error messages and the line numbers they pointed to.