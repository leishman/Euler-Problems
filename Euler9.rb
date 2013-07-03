# Euler Problem 9
# URL: http://projecteuler.net/problem=9
# Solution by Alexander Leishman and Kyle Owen

# Problem Text:
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product a*b*c.


integers = Array(1..1_000)								# Create array of integers
squares = integers.map! {|int| int**2}		# Square integers to get array of squares

squares.each do |num1|										# Loop through each of the squares
	c2 = num1
	b2 = squares.select {|sel| sel < c2}
	a2 = b2
	b2.each do |num2|
		a2.each do |num3|
			if num1 == num2 + num3
				c = num1**0.5
				b = num2**0.5
				a = num3**0.5
				if a + b + c == 1_000
					puts "a = #{a}, b = #{b}, c = #{c}/n"
					puts "Answer = "+ (a*b*c).to_s
					break
				end
			end
		end
	end
end
