def digital_root(n)
  while n.to_s.length > 1
    n = n.to_s.chars.map(&:to_i).sum
  end

  puts n
  return n
end

digital_root(16)        # correct answer: 7
digital_root(942)       # correct answer: 6
digital_root(132189)    # correct answer: 6
digital_root(493193)    # correct answer: 2