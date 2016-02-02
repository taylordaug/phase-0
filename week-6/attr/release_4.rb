# Release 3:

class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age

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

  # This code is no longer needed.
  # def what_is_age
  #   @age
  # end

  # This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

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
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info

=begin
Reflection
What changed between the last release and this release?
Using the attr_accessor method we can kill two birds with one stone. Now, we can either accept a reader or writer method so we can use this same method for returning our age or changing the value of our age.

What was replaced?
attr_reader :age and attr_writer :age were combined and now only need one line: attr_accessor: age. This allows the method to be both a reader and a writer.

Is this code simpler than the last?
Yes, one less method to define as an attr_attribute. In this case it is fine to make this both read/writable, but this is not best in all cases. You may not want to be able to always rewrite a variable.

=end