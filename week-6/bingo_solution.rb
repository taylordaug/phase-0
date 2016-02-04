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
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

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



#Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
new_game.generate
new_game.call
=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?


What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?


What methods did you use to access and modify the array?


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?


How did you determine what should be an instance variable versus a local variable?


What do you feel is most improved in your refactored solution?


=end

