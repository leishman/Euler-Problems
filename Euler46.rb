#Euler Problem 46
#Solution by Alexander Leishman and Kyle Owen


#Create array of prime numbers

max = 100000
prime_array = Prime(max)
puts prime_array

#Create array of odd numbers that are not prime

nums_array = 3.step(max,2).to_a - prime_array

# puts nums_array


#For every odd number X, subtract each prime less than X and divide by 2. 
#There should be at least one instance where this number is a square for any given X
#If not, then this indicates that X is not compatible with Goldbach's other conjecture

nums_array.each do |x|

	j = 0

	# prime_array_new_length = x
	# if x-1 > prime_array.length
	# 	prime_array_length = prime_array.length
	# end

	# prime_array_new = prime_array[0..x]

	prime_array.each do |prime|

		if prime < x
			remainder = (((x-prime)/2)**0.5)%1
			# puts remainder
		end

		if remainder  == 0
			j += 1
			# puts remainder
			next
		end

	end

	if j == 0
		puts "#{x} is an exception to Goldbach's other conjecture"
		break
	end

end




def Prime(max)

	ints = 7.step(max,2).to_a
	primes = [3,5,7]  #Removed 2 because it is not needed for the check

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
	return primes

end





