# TWO TO ONE
# https://www.codewars.com/kata/5656b6906de340bd1b0000ac/ruby

# Take 2 strings s1 and s2 including only letters from a to z. 
# Return a new sorted string, the longest possible, containing 
# distinct letters - each taken only once - coming from s1 or s2.

def longest(a1, a2)
    array = []
    
    # loop through a1, add to array
    for letter in a1.split("")
      !array.include?(letter) ? array.push(letter) : next
    end
    
    # loop through a2, add to array
    for letter in a2.split("")
      !array.include?(letter) ? array.push(letter) : next
    end
    
    # sort array
    puts array.sort.join
    return array.sort.join
end

longest("aretheyhere", "yestheyarehere")                          # correct answer: aehrsty
longest("loopingisfunbutdangerous", "lessdangerousthancoding")    # correct answer: abcdefghilnoprstu
longest("inmanylanguages", "theresapairoffunctions")              # correct answer: acefghilmnoprstuy