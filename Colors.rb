def colorize_array(value)
  if value == "  A  "
    return value.colorize(:color => :white, :background => :red)
  elsif value == "  B  "
    return value.colorize(:color => :white, :background => :green)
  elsif value == "  C  "
    return value.colorize(:color => :white, :background => :magenta)
  elsif value == "  D  "
    return value.colorize(:color => :white, :background => :blue)
  elsif value == "  E  "
    return value.colorize(:color => :white, :background => :cyan)
  elsif value == "  F  "
    return value.colorize(:color => :white, :background => :yellow)
  end
end

def print_guess
  puts colorize_array($split_guess[0]) + " " + colorize_array($split_guess[1]) + " " + colorize_array($split_guess[2]) + " " + colorize_array($split_guess[3]) + "    " + ("X " * $exact_matches.to_i) + ("O " * $incorrect_match.to_i)
end