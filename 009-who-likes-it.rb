def likes(names)
  case names.length
    when 0
      return "no one likes this"
    when 1
      return "#{names[0]} likes this"
    when 2
      return "#{names[0]} and #{names[1]} like this"
    when 3
      return "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
      return "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
    end
end

likes([])                               # correct answer: 'no one likes this'
likes(['Peter'])                        # correct answer: 'Peter likes this'
likes(['Jacob', 'Alex'])                # correct answer: 'Jacob and Alex like this'
likes(['Max', 'John', 'Mark'])          # correct answer: 'Max, John and Mark like this'
likes(['Alex', 'Jacob', 'Mark', 'Max']) # correct answer: 'Alex, Jacob and 2 others like this'