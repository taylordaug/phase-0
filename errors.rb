# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

#{"Screw you guys " + "I'm going home." = cartmans_phrase}

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about {thing}?"
  end
end

# This is a tricky error. The line number may throw you off.
#
# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, it was expecting "end"
# 5. Where is the error in the code?
# At the end of the document
# 6. Why did the interpreter give you this error?
# It was expecting "end" to finish defining the method and looked through the entire document to find it, which is why the error happened at line 170, the end of the document. Here, theres and "end" keyword for the "while", but not for "def" so the method remains undefined.

# --- error -------------------------------------------------------

south_park = 4

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# Name Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
# in '<main>' at 'south_park'
# 5. Why did the interpreter give you this error?
# The variable or method "south_park" has not been defined and has no value. This is the first time it is seen. It should read "south_park = x" or should be defined normally like a method "def south_park"

# --- error -------------------------------------------------------

def cartman(name)
  puts "Hello " + name + " !"
end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# in '<main>' at 'cartman'
# 5. Why did the interpreter give you this error?
# The method 'cartman' has not been defined, but here it is trying to take arguments. There is no method defined here, which is why it says "NoMethodError".

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# 68 and 72
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# in 'cartmans_phrase' and in '<main>'
# 5. Why did the interpreter give you this error?
# The method 'cartmans_phrase' doesn't take any arguments, that is, there is no () with an argument when it is defined. At line 72, we try to call 'cartmans_phrase' with the argument ('I hate Kyle'), but this method doesn't take arguments. Ruby was expecting 0 arguments, but it sees 1, which is why the message says 'wrong number of arguments (1 for 0)'.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("I hate you!")

# 1. What is the line number where the error occurs?
# 87 and 91
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# in 'cartman_says' and in '<main>'
# 5. Why did the interpreter give you this error?
# The method 'cartmans_says' takes one argument, (offensive_message). At line 91, we try to call 'cartmans_says' but give it no arguments. Ruby was expecting 1 arguments, but it sees 0, which is why the message says 'wrong number of arguments (0 for 1)'.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Taylor')

# 1. What is the line number where the error occurs?
# 108 and 112
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# in 'cartmans_lie' and then in '<main>'
# 5. Why did the interpreter give you this error?
# When calling the method 'cartmans_lie', the user only gives it one argument, when the method actually calls for two arguments (lie, name). The user gave the 'lie' argument, but no second 'name' argument, and when Ruby expected 2 arguments, it only saw 1, which made for an argument error.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# at the *
# 5. Why did the interpreter give you this error?
# This is asking ruby to multiply the integer '5' by a string. It is saying multiply 5 'respect my authoritay' times, which makes no sense. The string cannot be turned into an integer, and an integer can only be multiplied by another integer. This works if you flip them and multiply the string by 5, because that will just return the string 5 times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# the '/' in '<main>'
# 5. Why did the interpreter give you this error?
# This is asking ruby to divide 20 by 0, which is not a possible mathematical operation.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 158
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/taylordaugherty/Documents/devbootcamp/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# at 'require_relative'
# 5. Why did the interpreter give you this error?
# This is calling for a document using a relative path that doesn't exist. This path suggests this file is located at /Users/taylordaugherty/Documents/devbootcamp/phase-0/cartmans_essay.md, but ruby can't find it because it doesn't exist. I'd have to add this file to my phase-0 directory in order for this to work.

=begin
# --- REFLECTION -------------------------------------------------------
Which error was the most difficult to read?
I was most confused by the first one because the line number threw me off. This makes sense, however, because ruby looked through the entire document trying to find the "end" keyword. This will be frustrating in the future because the error actually happens at a different line than it appears to.

How did you figure out what the issue with the error was?
For the first one, I knew it was telling me there was some "end" missing somewhere, so I looked around until I found where it should go. In general, it was a combination of looking at exactly where the error was happening and what the type of the error was. Sometimes additional information like "wrong number of arguments (1 for 2)" was extremely specific and told me exactly what was happening, which was helpful too.

Were you able to determine why each error message happened based on the code?
Yes - these error messages were pretty descriptive and specific. I was able to confirm my suspicions by changing the code to fix the error, running the file, and making sure the error didn't come up again.

When you encounter errors in your future code, what process will you follow to help you debug?
I will first look to the type of the error, figure out what that is saying by looking at the point where the error occurs in the code and what line number, then look to the additional details for more information if I'm still confused. Once I think I have an idea, I can alter the code to check if my theory is correct, run the program again, and see if the error is still popping up. I will have to make sure to use git workflow so I don't break my program when debugging. This means I will commit my latest version, so I always have that version saves, and then start to debug. I can run git status to see what changes I have made, and if I want to keep those changes, I will add and commit them. If I don't want to keep those changes, I can just use "git checkout (file)" and that will checkout to the most recent commit.

=end