# Euler Problem 7
# URL: http://projecteuler.net/problem=7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10_001st prime number?
# Solution by Kyle Owen and Alexander Leishman
# Friday, June 7 2013

#Generate array of odd Integers from 7 to 200,000

Ints = 7.step(200_000,2).to_a
Primes = [2,3,5,7]
# puts Integers

# For each odd integer, check it's primeness and add to Primes array if it passes the prime test

Ints.each do |num|

	j=0

	Primes.each do |prime|
		if num % prime == 0
			j -= 1
		end
	end

	if j == 0
			Primes << num
			puts num
	end
end

# Print the 10,001st prime (array index 10,000)

puts Primes[10_000]

