# Euler Problem 40
# Solution by Alexander Leishman and Kyle Owen
# June 2013
# URL: http://projecteuler.net/problem=40

# PROBLEM TEXT:
# An irrational decimal fraction is created by concatenating the positive integers:
# 0.123456789101112131415161718192021...
# It can be seen that the 12th digit of the fractional part is 1.
# If d_n represents the nth digit of the fractional part, find the value of the following expression.
# d_1 * d_10 * d_100  * d_1000 * d_10000 * d_100000 * d_1000000


# Create string of consecutive numbers

string = ''
i = 1
# While loop goes to 1,000,000 because d_1,000,000 is the last value we need to find. Of course, the loop
# does not have to go this high, but we're playing it safe

while i < 1000000
	string << i.to_s
	i += 1
end

#Split the string into an array of digits

digits = string.split(//)

#Define d_n values by finding proper index in digits array

d_1 = digits[0].to_i
d_10 = digits[9].to_i
d_100 = digits[99].to_i
d_1000 = digits[999].to_i
d_10000 = digits[9999].to_i
d_100000 = digits[99999].to_i
d_1000000 = digits[999999].to_i

#Calculate the final answer

final_answer = d_1 * d_10 * d_100 * d_1000 * d_10000 * d_100000 * d_1000000

#Print the final answer

puts "Final Answer = #{final_answer}"
