def prompt
  print "> "
end

def guess
  puts "Pick a four letter combination to try (A - F)"
  prompt
  my_guess = gets.chomp.upcase
  unless my_guess.length == 4
    puts "Make sure your guess is four letters long."
    my_guess == ""
    return guess
  end
  my_guess = my_guess.split("")
  my_guess = check_guess(my_guess)
  return my_guess
end