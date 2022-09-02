def permute_a_palindrome(input)
  odd_chars = [] # Characters that appear an odd number of times in the string

  input.chars.each { |char|
    if input.chars.count(char).odd? and not odd_chars.include?(char) 
      odd_chars.push(char)
    end
  }
  
  return odd_chars.count <= 1
end

permute_a_palindrome("a")           # correct answer: true
permute_a_palindrome("aa")          # correct answer: true
permute_a_palindrome("baa")         # correct answer: true
permute_a_palindrome("aab")         # correct answer: true
permute_a_palindrome("baabcd")      # correct answer: false
permute_a_palindrome("racecars")    # correct answer: false
permute_a_palindrome("abcdefghba")  # correct answer: false
permute_a_palindrome("")            # correct answer: true