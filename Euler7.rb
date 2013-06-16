# Euler Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# Solution by Kyle Owen and Alexander Leishman
# Friday, June 7 2013

#Generate array of Integers

Ints = 7.step(200000,2).to_a
Primes = [2,3,5,7]
# puts Integers

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

puts Primes[10000]

