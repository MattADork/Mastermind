def initialize_values
  value1 = rand 1..6
  value2 = rand 1..6
  value3 = rand 1..6
  value4 = rand 1..6
  values = [value1, value2, value3, value4]
  return values
end

def assign(array)
  new_array = array.map do |value|
    if value == 1
      value = "A"
    elsif value == 2
      value = "B"
    elsif value == 3
      value = "C"
    elsif value == 4
      value = "D"
    elsif value == 5
      value = "E"
    elsif value == 6
      value = "F"
    end
  end
end

def check_guess(array)
  final_array = []
  array.each do |value|
    if value == "A" or value == "B" or value == "C" or value == "D" or value == "E" or value == "F"
      final_array.push(value)
    end
  end
  unless final_array.length == 4
    return play_game
  end
  return final_array
end

def space(array)
  if array == ""
    array = ["A", "B", "C", "D"]
  end
  spaced_array = array.map do |value|
    value = " " + value + " "
  end
  return spaced_array
end