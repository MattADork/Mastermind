def prompt
  print "> "
end

def guess
  puts "Pick a four letter combination to try (A - F)"
  prompt
  my_guess = gets.chomp.upcase
  i = 0
  unless my_guess.length == 4
    puts "Make sure your guess is four letters long."
    return guess
  end
  while i < 4
    if my_guess[i] == "A" or my_guess[i] == "B" or my_guess[i] == "C" or my_guess[i] == "D" or my_guess[i] == "E" or my_guess[i] == "F"
      i += 1
    else 
      puts "Only use letters from A to F"
      return guess
    end
  end
  split_guess = my_guess.split("")
  return split_guess
end