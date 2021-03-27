def prompt
  print "> "
end

def guess
  puts
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
    print_guess
    puts "Congratulations! You've won the game!"
    puts "Play again? (y/n)"
    prompt
    play_again = gets.chomp.downcase
    if play_again == 'y' or play_again == ''
      return main
    else
      exit
    end
  end
  if code[0] == guess[0]
    $exact_matches += 1
    $incorrect_match -= 1
  end
  if code[1] == guess[1]
    $exact_matches += 1
    $incorrect_match -= 1
  end
  if code[2] == guess[2]
    $exact_matches += 1
    $incorrect_match -= 1
  end
  if code[3] == guess[3]
    $exact_matches += 1
    $incorrect_match -= 1
  end
  sorted_code = code.sort
  sorted_guess = guess.sort
  intersect = (sorted_code & sorted_guess).flat_map { |n| [n]*[sorted_code.count(n), sorted_guess.count(n)].min }
  $incorrect_match += intersect.length
  if $incorrect_match < 0
    $incorrect_match == 0
  end
end

def computer_solve
  computer_values = initialize_values
  computer_assign = assign(computer_values)
  $split_guess = space(computer_assign)
  $turn_number += 1
  return $split_guess
end

def computer_matches(code, guess)
  if defined? $solved_value_1 == "global-variable"
    guess[0] = $solved_value_1
  end
  if defined? $solved_value_2 == "global-variable"
    guess[1] = $solved_value_2
  end
  if defined? $solved_value_3 == "global-variable"
    guess[2] = $solved_value_3
  end
  if defined? $solved_value_4 == "global-variable"
    guess[3] = $solved_value_4
  end

  puts "Turn number: #{$turn_number}"
  $exact_matches = 0
  $incorrect_match = 0

  
  if code[0] == guess[0] and code[1] == guess[1] and code[2] == guess[2] and code[3] == guess[3]
    print_guess
    puts "The computer has won the game in #{$turn_number} turns!"
    puts "Play again? (y/n)"
    prompt
    play_again = gets.chomp.downcase
    if play_again == 'y' or play_again == ''
      return main
    else
      exit
    end
  end
  if code[0] == guess[0]
    $exact_matches += 1
    $incorrect_match -= 1
    $solved_value_1 = code[0]
  end
  if code[1] == guess[1]
    $exact_matches += 1
    $incorrect_match -= 1
    $solved_value_2 = code[1]
  end
  if code[2] == guess[2]
    $exact_matches += 1
    $incorrect_match -= 1
    $solved_value_3 = code[2]
  end
  if code[3] == guess[3]
    $exact_matches += 1
    $incorrect_match -= 1
    $solved_value_4 = code[3]
  end
  sorted_code = code.sort
  sorted_guess = guess.sort
  intersect = (sorted_code & sorted_guess).flat_map { |n| [n]*[sorted_code.count(n), sorted_guess.count(n)].min }
  $incorrect_match += intersect.length
  if $incorrect_match < 0
    $incorrect_match == 0
  end
  puts
end