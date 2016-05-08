def order_weight(strng)

number_length = strng.split(' ').map { |num| num.to_s.length }
digits = strng.split('').keep_if {|el| el != " "  }.map {|str| str.to_i}
arrays = []
number_length.each {|e| arrays << digits.shift(e)}
amount_of_array_elements = number_length.length
new_count = arrays.map {|array| array.inject{|memo,num| memo + num}}
original_numbers = arrays.map {|array| array.join('')}
output = original_numbers.zip new_count.zip [*1..amount_of_array_elements]
output.sort_by{|x,y,z|y}.map {|x,y| x}.join(' ')


end

print order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")