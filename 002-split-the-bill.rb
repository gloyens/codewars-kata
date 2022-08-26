def split_the_bill(x)
  mean = x.values.map(&:to_f).sum / x.values.length
  
  x.values.each_with_index { |value,index| 
    x[x.keys[index]] = (value - mean).round(2) }
  
  puts x
  return x
end

split_the_bill({'A'=>20, 'B'=>15, 'C'=>10})                         # correct answer: {'A'=>5.00, 'B'=>0.00, 'C'=>-5.00}
split_the_bill({'A'=>40, 'B'=>25, 'X'=>10})                         # correct answer: {'A'=>15.00, 'B'=>0.00, 'X'=>-15.00}
split_the_bill({'A'=>40, 'B'=>25, 'C'=>10, 'D'=>153, 'E'=>58})      # correct answer: {'A'=>-17.20, 'B'=>-32.20, 'C'=>-47.20, 'D'=>95.80, 'E'=>0.80}
split_the_bill({'A'=>475, 'B'=>384, 'C'=>223, 'D'=>111, 'E'=>19})   # correct answer: {'A'=>232.6, 'B'=>141.6, 'C'=>-19.4, 'D'=>-131.4, 'E'=>-223.4}