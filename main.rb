require 'colorize'
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
  puts "Welcome to my console version of Mastermind!"
  puts "You'll have 12 turns to crack the code, each turn"
  puts "guess four letters from A to F, and you'll be notified"
  puts "of how many EXACT matches you have, and how many"
  puts "correct values you have in the wrong place."
  puts
  puts "Each X represents an exact match"
  puts "Each O represents a correct value in the wrong place"
  values = initialize_values
  code = assign(values)
  $code_spaced = space(code)
  $turn_number = 1
  print $code_spaced
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
  matches($code_spaced, game)
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
end

main