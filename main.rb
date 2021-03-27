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
  puts "Manually create code? (y/n)"
  prompt
  manual = gets.chomp.downcase
  if manual == "y"
    puts "Choose a four-letter code (only using the letters A through F):"
    prompt
    values = gets.chomp.upcase.split("")
    unless values.length == 4
      puts
      puts "Sorry, the code has to be exactly 4 letters."
      return main
    end
    code = assign(values)
    $code_spaced = space(code)
  else
    values = initialize_values
    code = assign(values)
    $code_spaced = space(code)
  end

  $turn_number = 1
  print $code_spaced
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
end

puts
puts "Welcome to my console version of Mastermind!"
puts "You'll have 12 turns to crack the code, each turn"
puts "guess four letters from A to F, and you'll be notified"
puts "of how many EXACT matches you have, and how many"
puts "correct values you have in the wrong place."
puts
puts "Each X represents an exact match"
puts "Each O represents a correct value in the wrong place"
puts

main