=begin
Write a function done_or_not/DoneOrNot passing a board (list[list_lines]) as parameter.
If the board is valid return 'Finished!', otherwise return 'Try again!', according to
the rules of sudoku. In short you need to check every row, column and region has the
numbers 1 through 9, with no duplicates
=end

def done_or_not(board)

  #check if the rows are valid
  board.each_with_index do |line, x|
    return "Try again!" unless line.valid?

    #Create a region and check the region

    # In the first line [0,3,6].include?(x), as x is the index this is saying execute the
    # following code on index 0, 3 and 6 (remember our indices are our rows).

    #region = board[x][y, 3]; This is taking the whole board array and getting index [x]
    #which is also an array and then we go into this array using [y, 3] which means give
    #me the value at position y plus the next 3 values and return these values as an array.
    #So looking at the board array we just got the first 3 values of row 1.

    #Then next 2 parts of the sum are exactly the same except when we access the board array
    #we are saying access the sub array at position [x + 1] and then [x + 2]. So this will give
    #us the first 3 values of 2 and the first 3 values of row 3, adding them all together into
    #an array.
    if [0,3,6].include?(x)
      [0,3,6].each do |y|
        region = board[x][y, 3] + board[x + 1][y, 3] + board[x + 2][y, 3]
        return 'Try again!' unless line.valid?
      end
    end
  end

  #create the columns and check the columns.

  board.transpose.each do |line|
    return 'Try again!' unless line.valid?
  end
end

# Use regular expression to validte each row, column and region
# \A the match must start at the beginning of the string
# [1-9] the match must be a number from 1 to 9
# {9} the match must occur 9 times
# \z the match must finish at the end of the string
class Array
  def valid?
      /\A[1-9]{9}\z/ === uniq.join
  end
end
