#Release 0:

class Profile

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  def what_is_age
    @age
  end

 # the change_my_age= syntax might be confusing to see, it just allows us to set the value of the @age variable using = format instead of the standard argument format. Look at line 71 to see what I mean. The equals sign is just a part of the method name string, nothing special going on here.
  def change_my_age=(new_age)
    @age = new_age
  end

  def what_is_name
    @name
  end

  def change_my_name=(new_name)
    @name = new_name
  end


  def what_is_occupation
    @occupation
  end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

instance_of_profile = Profile.new

# I have to use p here because what_is_age only returns the value of @number, it does not print anything to the console. The p modifier prints to the console whatever value is returned. Nifty!
puts "--- printing age -----"
sleep 0.8 # sleep so the program takes a pause instead of just running through
p instance_of_profile.what_is_age # here we expect age to be 27

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do # because we fancy
  print "."
  sleep 0.1
end

instance_of_profile.change_my_age = 28 # happy birthday! you aged one year
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"

puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info  #Let's see the final product now. We changed all of the values using setters, so everything is different than before.

=begin
Reflection:
What are these methods doing?
Since age, name, and occupation are initialized with values and are instance variables, any other method in this class can use them. The print_info method just takes all the instance variables set in initialize and prints them to the screen. Different characteristics are defined through the methods, but then using setters, are made to be modifiable with new methods. This allows you to change the value of the variable by setting methods to a new value.

How are they modifying or returning the value of instance variables?
Because we use setters, we are saying each instance variable can be changed. The syntax looks like this: def change_my_age=(new_age). That equal sign before the argument makes the method a setter, so when you pass the argument in you make it equal to the method instead of using parentheses. These setter methods are taking those instance variables and modifying them by taking a new argument and making that equal to the instance variable. The "change" methods take the original value of the instance variable and update them by taking a new argument and setting the instance variable equal to it.

=end
