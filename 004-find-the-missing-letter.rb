def find_missing_letter(arr)
  # Convert to unicode
  unicode_array = []
  arr.each { |char| unicode_array.push(char.ord) }
  
  missing_letter = ""

  unicode_array.each_with_index { |value, i| 
    if value != unicode_array[i-1] + 1 
      missing_letter = (value - 1).chr
    end
  }

  puts missing_letter
  return missing_letter
end

find_missing_letter(["a","b","c","d","f"])  # correct answer: "e"
find_missing_letter(["O","Q","R","S"])      # correct answer:"P"
find_missing_letter(["b","d"])              # correct answer:"c"
find_missing_letter(["a","b","d"])          # correct answer:"c"
find_missing_letter(["b","d","e"])          # correct answer:"c"
