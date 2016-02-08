# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #pass in array with letters and one array with numbers, randomly pick one (.sample)

# Check the called column for the number called.
  #see if letter is present in the column corresponding to the letter(index of array)
  #ie B => index [0]

# If the number is in the column, replace with an 'x'
  #change the value of that index by make it equal to "x" string

# Display a column to the console
  #separate out an array that corresponds to that letter only

# Display the board to the console (prettily)
  #print the bingo board back in it's original state after we've modified it - maybe each.slice?

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
  @letter = ["B", "I", "N", "G", "O"].sample
  @number = Random.rand(1..100)
  p "Call: #{@letter}#{@number}"
  end

  def call
  @bingo_board.flatten!

  case @letter
    when "B"
      @bingo_board.each_with_index {|x, index|
        if index % 5 == 0 || index == 0
          if x == @number
          @bingo_board[index] = "X"
        end
      end
        }

    when "I"
      @bingo_board.each_with_index {|x, index|
        if index == 1 || index == 6 || index == 11 || index == 16 || index == 21
          if x == @number
          @bingo_board[index] = "X"
        end
      end
        }

    when "N"
       @bingo_board.each_with_index {|x, index|
          if index == 2 || index == 7 || index == 12 || index == 17 || index == 22
            if x == @number
              @bingo_board[index] = "X"
            end
          end
        }

    when "G"
       @bingo_board.each_with_index {|x, index|
          if index == 3 || index == 8 || index == 13 || index == 18 || index == 23
            if x == @number
              @bingo_board[index] = "X"
          end
        end
        }

    when "O"

       @bingo_board.each_with_index {|x, index|
          if index == 4 || index == 9 || index == 14 || index == 19 || index == 24
            if x == @number
              @bingo_board[index] = "X"
            end
          end
        }
    end
    @bingo_board.each_slice(5) {|x| p x}
  end

end
=end


#Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
  @letter = ["B", "I", "N", "G", "O"].sample
  @number = Random.rand(1..100)
  p "Call: #{@letter}#{@number}"
  end

  def call
  @bingo_board.flatten!


  case @letter
    when "B"
      @bingo_board.each_with_index {|x, index|
        counter = 0
        counter += 5
        if index % counter == 0
          if x == @number
            @bingo_board[index] = "X"
          end
        end
      }

    when "I"
      @bingo_board.each_with_index {|x, index|
        if index == 1 || index == 6 || index == 11 || index == 16 || index == 21
          if x == @number
            @bingo_board[index] = "X"
          end
        end
      }

    when "N"
       @bingo_board.each_with_index {|x, index|
          if index == 2 || index == 7 || index == 12 || index == 17 || index == 22
            if x == @number
              @bingo_board[index] = "X"
            end
          end
        }

    when "G"
       @bingo_board.each_with_index {|x, index|
          if index == 3 || index == 8 || index == 13 || index == 18 || index == 23
            if x == @number
              @bingo_board[index] = "X"
            end
          end
        }

    when "O"

       @bingo_board.each_with_index {|x, index|
          if index == 4 || index == 9 || index == 14 || index == 19 || index == 24
            if x == @number
              @bingo_board[index] = "X"
            end
          end
        }
    end
   @bingo_board.each_slice(5) {|x| p x}
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate
new_game.call



=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding this was tough because there were so many different routes to go down. I find that I pseudocode something, but then want to immediately test it out to find out if it works. Once I confirm it does, I often just keep coding and don't return to the pseudocode. I need to discipline myself into getting at least the habit of outlining the entire challenge first.

What are the benefits of using a class for this challenge?
With the class, you can give each roll a certain blueprint: initialize it with the same board, have a generate method that always goes through the same letters and numbers to choose a roll, and then the call method to search for the same attributes every time and return an answer based on that. Since each roll, or instance of the class, contains the same basic characteristics, actions, and blueprint, a class makes sense.

How can you access coordinates in a nested array?
You go through specifying the index you want to access at each level of the nested array. For example, if you wanted to access the third number in the second nested array, you'd call the array[1][2], first accessing the first index which is the second nested array, and then the second index within that array, or the third number.

What methods did you use to access and modify the array?
Flatten! allowed me to permanently remove the nesting on the array. This allowed me to access indices much more easily, instead of iterating through the nested structure. I also used each_with_index to iterate through the flattened array at a certain index.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
Each_with_index allows you to iterate through an array and call an action for specific indices. This allows you to only call blocks of code at certain indices instead of the whole array, which is very useful. You call it like this: @bingo_board.each_with_index {|x, index| code block}.

How did you determine what should be an instance variable versus a local variable?
If you want a variable to carry over to another method in the class, use the instance variable as that will be available within each instance of the class. If you just need a variable inside one method, use a local variable. This will not carry over to any other methods. A counter is often a local variable, because you want to keep the count throughout one method.

What do you feel is most improved in your refactored solution?
Implementing a counter to access the different indices was much cleaner and more efficient than listing out all the possible values of the index for each letter! This was the part I was most unhappy with in my initial solution, so I prioritized to tackle it first. However, I could only figure this out for the B since all indices in for B are divisible by 5.

=end

