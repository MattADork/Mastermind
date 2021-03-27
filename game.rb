def prompt
  print "> "
end

def guess
  puts "Pick a four letter combination to try (A - F) [Turn: #{$turn_number}/12]"
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
  $split_guess = my_guess.split("")
  return $split_guess
end

def matches(code, guess)
  $exact_matches = 0
  $incorrect_match = 0
  if code[0] == guess[0] and code[1] == guess[1] and code[2] == guess[2] and code[3] == guess[3]
    puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
    puts "Congratulations! You've won the game!"
    puts "Play again? (y/n)"
    prompt
    play_again = gets.chomp.downcase
    if play_again == 'y'
      return main
    else
      exit
    end
  end
  if code[0] == guess[0]
    $exact_matches += 1
  end
  if code[1] == guess[1]
    $exact_matches += 1
  end
  if code[2] == guess[2]
    $exact_matches += 1
  end
  if code[3] == guess[3]
    $exact_matches += 1
  end
  if code[0] == guess[1] or code[0] == guess[2] or code[0] == guess[3]
    $incorrect_match += 1
  end
  if code[1] == guess[0] or code[1] == guess[2] or code[1] == guess[3]
    $incorrect_match += 1
  end
  if code[2] == guess[1] or code[2] == guess[0] or code[2] == guess[3]
    $incorrect_match += 1
  end
  if code[3] == guess[1] or code[3] == guess[2] or code[3] == guess[0]
    $incorrect_match += 1
  end
  if code[0] == code[1] or code[0] == code[2] or code[0] == code[3] or code[1] == code[2] or code[1] == code[3] or code[2] == code[3]
    $incorrect_match -= 1
  end
  if $incorrect_match < 0
    $incorrect_match = 0
  end
  if $incorrect_match + $exact_matches > 4
    $incorrect_match = 4 - $exact_matches
  end
end