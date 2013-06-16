#Project Euler Problem 14 Solution
#Collatz Conjecture
#By Alexander Leishman May 12, 2013
#Smarter way to do it...Look to see if sequence length has been previously calculated and add

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

#define method for collatz sequence

def collatz(number)
	n = number 				#Alias for number in Collatz function
	sequence = Array.new	#Define array to hold output of sequenc
	sequence[0] = n  		#Set first element of sequence array equal to n
	i = 0 					#Counter for array to hold Collatz sequence
						
	while n != 1
		if n.even?			#if n is even, n = n/2. Record new value in array
			n = n/2
			i = i+1
			# puts n
			sequence[i]=n
		else
			n = 3*n + 1
			i = i+1
			# puts n
			sequence[i]=n
		end
	end

# puts sequence
return sequence.length

end


#Find longest chain

integers = Array(1..1000000)	#Array from 1 to 1,000,000
chain_length = 0
chain_start = 0
integers.each do |num|

	l = collatz(num)
	if l > chain_length
		chain_length = l
		chain_start = num
	end

end

puts "Chain length: #{chain_length}"
puts "Chain start: #{chain_start}"














