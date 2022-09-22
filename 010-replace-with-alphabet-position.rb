def alphabet_position(text)
  numbers = ""
  # Remove non-alphabetical characters
  text.gsub(/[^a-zA-Z]*/,"").downcase.chars.each { |char| 
    numbers += (char.ord - 96).to_s + " "
  }
  return numbers[0...-1]
end

alphabet_position("The sunset sets at twelve o' clock.") # correct answer: "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")