require 'colorize'
require 'io/console'
require_relative 'game'
require_relative 'Values'
require_relative 'Colors'

def game
  my_guess = guess
  $split_guess = space(my_guess)
  puts
  $turn_number += 1
  return $split_guess
end

def main
  puts
  puts "Each X represents an exact match"
  puts "Each O represents a correct value in the wrong place"
  puts
  puts "Manually create code? (y/n)"
  prompt
  manual = gets.chomp.downcase
  if manual == "y"
    puts "Choose a four-letter code (only using the letters A through F):"
    prompt
    values = STDIN.noecho(&:gets).chomp.upcase.split("")
    unless values.length == 4
      puts
      puts "Sorry, the code has to be exactly 4 letters."
      return main
    end
    code = assign(values)
    $code_spaced = space(code)
    puts
    puts "Do you want the console to attempt to solve this? (y/n)"
    console_attempt = gets.chomp.downcase
    if console_attempt == 'y'
      play_computer_game
    else
      play_game
    end
  else
    values = initialize_values
    code = assign(values)
    $code_spaced = space(code)
    play_game
  end
end

def play_game
  $turn_number = 1
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  matches($code_spaced, game)
  print_guess
  puts
  puts "Sorry... You've lost this time the correct code was:"
  puts
  puts colorize_array($code_spaced[0]) + " " + colorize_array($code_spaced[1]) + " " + colorize_array($code_spaced[2]) + " " + colorize_array($code_spaced[3])
  puts
  puts "Do you want to play again? (y/n)"
    prompt
    play_one_more = gets.chomp.downcase
    if play_one_more == "y"
      return main
    else
      exit
    end
end

def play_computer_game
  $turn_number = 0
  while $game_over == false
    computer_matches($code_spaced, computer_solve)
    print_guess
    gets.chomp
  end
end

puts
puts "Welcome to my console version of Mastermind!"
puts "You'll have 12 turns to crack the code, each turn"
puts "guess four letters from A to F, and you'll be notified"
puts "of how many EXACT matches you have, and how many"
puts "correct values you have in the wrong place."
puts
$game_over = false

main