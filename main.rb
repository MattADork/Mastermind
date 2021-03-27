require 'colorize'
require_relative 'game'
require_relative 'Values'

def main
  my_guess = guess
  split_guess = space(my_guess)
  print $code_spaced
  puts
  print split_guess
  puts
  puts split_guess[0].colorize(:color => :white, :background => :red) + split_guess[1].colorize(:color => :white, :background => :blue) + split_guess[2].colorize(:color => :white, :background => :magenta) + split_guess[3].colorize(:color => :white, :background => :cyan)
end

values = initialize_values
code = assign(values)
$code_spaced = space(code)
main