#defines whether the spot chosen has already been played
def position_taken?(array, index)
  if array[index] == " "
    return false
  elsif array[index] == ""
    return false
  elsif array[index] == nil
    return false
  elsif array[index] == "X" || array[index] == "O"
    return true
  end
end

#returns true if the position chosen is available (not taken) and on the board (index 0-8)
def valid_move?(array, index)
  if index.between?(0, 8) && position_taken?(array, index) == false
    return true
  else
    return false
  end
end
