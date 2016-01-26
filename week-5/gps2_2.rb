# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a new hash: Hash.new
  # list items and quantities within hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash, food item and quantity


def make_pretty(taylors_list)
  taylors_list.each {|key, value| puts "#{key}: #{value}"}
end

def list(shopping_list)
  taylors_list = {}
  array = shopping_list.split(" ")
  array.each {|item|
    taylors_list[item] = 0
  }
  make_pretty(taylors_list)
end

list("carrots peas lettuce")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# add food to list
# hash[food] = quantity
# output: the hash with the new food added

def add_item(taylors_list, item_name, quantity)
  taylors_list[item_name] = quantity
  puts taylors_list
  make_pretty(taylors_list)
end


# Method to remove an item from the list
# input: item name
# steps:
# hash.delete(food)
# output: the hash with the food deleted

def delete_item(taylors_list, item_name)
  taylors_list.delete(item_name)
  return taylors_list
  make_pretty(taylors_list)
end

# Method to update the quantity of an item
# input: new value (quantity) for a certain key (food)
# steps:
# hash[food] = make it equal to new quantity of item
# output: the hash with all the same foods, but that one food quantity will be updated

def update_list(taylors_list, item_name, quantity)
  taylors_list[item_name] = quantity
  make_pretty(taylors_list)
end


# Method to print a list and make it look pretty
# input:
# steps:
# puts hash.each {|key, value| puts "#{key}: #{value}"}
# output: list of all food: quantity should be all on different lines

# this method was moved to the top - you cannot call methods in other methods above where you have defined the method, so this one make_pretty had to be defined first


=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode gives you a great jumping off point when faced with complex methods or when you have a bunch of methods to write. Sometimes it is hard to know where to start, but by defining inputs/outputs and what should be happening, you have something concrete to go off of. I learned, however, that sometimes my pseudocode was actual code. My guide told me to not get tripped trying to not write code, because the idea is that the pseudocode helps you as much as possible. If you can think of the method you'll need, just write it down so you remember when you come back later.

What are the tradeoffs of using Arrays and Hashes for this challenge?
My initial thought was to use hashes for this so we could assign quantities to the food items. Hashes are always better if you want to associate two things together. Arrays are more important if you care about order in your list, which in this case, I didn't. So for my hash, the food could be the key, and the quantity the value. It was actually pretty complicated to take the string of food items, split them into separate strings for each item in an array, then iterate over the array to create key value pairs for a hash. Using an array would've eliminated a step here. However, an array would've been a simple list of items, and I wouldn't have been able to specify quantities.

What does a method return?
A method returns the last thing outputted. It will always implicitly return a value to the program itself, but will not always print it as an output to the screen unless you specify "print" or "puts". When you "print" or "puts" something to the screen, "nil" is returned to the program. There are different schools of thought on whether to explicity write "return" or implicitly allow your program to return a value without writing "return". From what I've read, it seems like explicitly saying "return" makes your code more readable for others who may have experience in other coding languages that don't use implicit returns. For this reason, and for the reason that I am still learning and it helps to know exactly what I am trying to return, I will keep explicitly specifying that.

Remember, for anything to happen at all with your program, you must call the method. Defining a method will not return a value on its own.

What kind of things can you pass into methods as arguments?
Variables, integers, strings, other methods. Any object?

How can you pass information between methods?
Declare the variable you want to include from another method as an argument in the new method. You can call other methods you've defined within other methods, but you MUST define the method you're calling above the one you want to call it in otherwise the program will not know what that method is.

What concepts were solidified in this challenge, and what concepts are still confusing?
I had a really hard time translating the string of items into a hash. I had to translate from one long string, split the the string into a bunch of smaller string items, then iterate through those as an array to declare each as a key, value pair and set a default value. This was very foreign to me.

=end