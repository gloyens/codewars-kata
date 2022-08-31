def scramble(s1,s2)  
  # For each character in s1, if it's present in s2, remove from s2.
  # If s2 has no characters left at the end, return true.
  
  arr = s2.chars
  s1.chars.each { |char| 
    arr.include?(char) ? arr.delete_at(arr.index(char)) : nil
  }

  puts arr.length == 0
  return arr.length == 0
end

scramble('rkqodlw','world')                 # correct answer: true
scramble('cedewaraaossoqqyt','codewars')    # correct answer: true
scramble('katas','steak')                   # correct answer: false
scramble('scriptjava','javascript')         # correct answer: true
scramble('scriptingjava','javascript')      # correct answer: true