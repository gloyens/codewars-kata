def moveZeros(arr) 
  zeros = []
  
  arr.each { |number|
    if number == 0.0
      arr -= [number]
      zeros += [0]
    end
  }

  puts arr + zeros
end

#moveZeros([1,2,0,1,0,1,0,3,0,1])    # correct answer: [ 1, 2, 1, 1, 3, 1, 0, 0, 0, 0 ]
moveZeros(["a","b",0.0,"c",0,00,"d",1,1,0.00,3,1,9,0,9,])