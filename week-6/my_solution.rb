#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: string (my name)
# Output: string (salutation printed to console)
# Steps:
# for NameData class:
  #define method to initialize variable name to be my name "Taylor"
  #define method to display my name when called
#for Greetings class:
  #define method to initialize variable to take an object that is a new instance of the NameData class (pass information from class to class)
  #define method that prints out greeting message I want and includes my name from the NameData class
    #call display method from NameData class on the new instance of the NameData class so that it prints out in the middle of this string
#when calling method
  #create new instnace of Greetings class
  #call the display method on new instance so it prints out message

class NameData
  def initialize
    @name = "Taylor"
  end
  def display_name
    "#{@name}"
  end
end


class Greetings
  def initialize
    @print_name = NameData.new
  end

  def display
    puts "Good afternoon, #{@print_name.display_name}! So good to see you. I've missed you terribly."
  end
end

greet_me = Greetings.new
print greet_me.display


=begin
# Reflection
What is a reader method?
A reader method is basically a shortcut to defining an instance variable. When you type attr_reader :x, what's happening in the background in Ruby is this: def x; @x; end. It is essentially a shortcut to defining the instance variable. This method is readable only, and you cannot reset or change it.

What is a writer method?
The writer method is a shortcut to defining an instance variable that can set, or rewritten, to become a different value. When you type attr_writer :x, what's happening in the background in Ruby is this: def x=(value); @x=value; end. With that attr_writer shortcut, you are defining an instance variable that takes on a new value that the user inputs upon calling the method. This method is not readable, you can only reset it to some value.

What do the attr methods do for you?
Attr methods allow you to skip steps defining methods. They allow you to read and write attributes of the object. An object's instance variables are its attributes. Method names and definitions can become wordy, so attribute methods allow you to access the attributes without explicitly writing methods.

Should you always use an accessor to cover your bases? Why or why not?
No. This can cause problems later when you are debugging and looking for certain variables if all of them are able to be rewritten. Allowing them all to be changeable may make them accessible to other methods when you don't really want them to be. It is safer to only make them rewritable when you absolutely need them to be. Always using an accessor compromises the security of your data!

What is confusing to you about these methods?
I was confused by creating instances of a class inside another class. I realized I had to initialize an instance variable with the instance of the class if I wanted to use an instance of a class outside the method I was currently in. I also realized that once I initialized the instance of the class, I could call a method from that previous class on the new variable as well, even though I was in a new class. It was tough figuring out how these pieces all fit together, but it makes sense now.

=end