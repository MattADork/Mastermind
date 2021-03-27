require 'colorize'
require_relative 'game'
require_relative 'Values'

def main
  values = initialize_values
  code = assign(values)
  code_spaced = space(code)
  my_guess = play_game
  print "hi"
end

def play_game
  puts
  my_guess = guess
  spaced_guess = space(my_guess)
  puts spaced_guess[0] + spaced_guess[1] + spaced_guess[2] + spaced_guess[3]
  return spaced_guess
end

main