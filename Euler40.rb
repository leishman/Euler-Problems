#Euler Problem 40

#Create string of consecutive numbers

string = ''
i = 1

while i < 1000000
	string << i.to_s
	i += 1
end

digits = string.split(//)

puts d_1 = digits[0].to_i
puts d_10 = digits[9].to_i
puts d_100 = digits[99].to_i
puts d_1000 = digits[999].to_i
puts d_10000 = digits[9999].to_i
puts d_100000 = digits[99999].to_i
puts d_1000000 = digits[999999].to_i

final_answer = d_1 * d_10 * d_100 * d_1000 * d_10000 * d_100000 * d_1000000

puts final_answer
