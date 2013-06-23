# Euler Problem 55
# Solution by Alexander Leishman June 23, 2013
# PROBLEM URL: http://projecteuler.net/problem=55
# PROBLEM TEXT:

# If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.

# Not all numbers produce palindromes so quickly. For example,

# 349 + 943 = 1292,
# 1292 + 2921 = 4213
# 4213 + 3124 = 7337

# That is, 349 took three iterations to arrive at a palindrome.

# Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).

# Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.

# How many Lychrel numbers are there below ten-thousand?

# NOTE: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.

################################################################################################################################################



# Define method to return the number of iterations required to reach a palindrome or, if >50 iterations, assign the integer as a Lychrel number

def lychrel(num)

	chain = num + num.to_s.reverse.to_i 	# define first number in the chain potentially leading to a palindrome
	iter = 1		# Define number of iterations variable

	while chain.to_s != chain.to_s.reverse && iter <= 50
		iter += 1
		chain = chain + chain.to_s.reverse.to_i
	end

	if iter > 50
		return "Lychrel"
	else
		return iter
	end

end


ints = Array(1..10_000)			# Define array of integers 1-10,000
output = Array.new					# Define output array
i = 0 											# Index for output loop

ints.each do |num|					# For each integer, run the lychrel function
	output[i] = lychrel(num)
	i += 1
end

num_lych = output.count("Lychrel") # Count the number of integers for which the lychrel function returned "Lychrel"

puts "There are #{num_lych} Lychrel numbers below 10,000"










