def solution(string)
    string = string.split(/(?=[A-Z])/).join(" ")
    
    puts string
    return string
end

solution('camelCasing')         # correct answer: 'camel Casing'
solution('camelCasingTest')     # correct answer: 'camel Casing Test'