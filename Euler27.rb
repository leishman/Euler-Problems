# Euler Problem 27
# Solution by Alexander Leishman and Kyle Owen July 7, 2013

# PROBLEM TEXT

# Euler discovered the remarkable quadratic formula:
# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

# The incredible formula  n²  79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, 79 and 1601, is 126479.

# Considering quadratics of the form:

# n² + an + b, where |a|  1000 and |b|  1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.


#################################################

def prime_to(max)
	ints = 7.step(max,2).to_a
	primes = [2,3,5,7]

	# For each odd integer, check it's primeness and add to Primes array if it passes the prime test

	ints.each do |num|

		j=0


		primes.each do |prime|
			if num % prime == 0
				j -= 1
			end
		end

		if j == 0
				primes << num
		end
	end
	# Return array of Primes up to max
	return primes
end


ints = Array(0..1_000)
primes = prime_to(10_000)
b = prime_to(1_000)
a = -999.step(999,2).to_a 
a_b2 = Array(-1_000..1_000)

a_max = 0
b_max = 0
count_max = 40  # Max known so far
count_n = 0


b.each do |b|
	puts b
	if b != 2
		a.each do |a|

			count_n = 0

			ints.each do |n|

			x = n**2 + a*n + b

				if primes.include? x
					count_n += 1
				elsif count_n > count_max
					count_max = count_n
					a_max = a
					b_max = b
					break
				else
					break
				end

			end
		end
	else
		a_b2.each do |a|

			count_n = 0

			ints.each do |n|

			x = n**2 + a*n + b

				if primes.include? x
					count_n += 1
				elsif count_n > count_max
					count_max = count_n
					a_max = a
					b_max = b
					break
				else
					break
				end

			end
		end

	end
end

puts "Max of n: #{count_max}"
puts "a = #{a_max}"
puts "b = #{b_max}"
puts "Product of coefficients = #{a_max*b_max}"




