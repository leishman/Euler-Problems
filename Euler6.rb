# Solution to Euler problem 6
# http://projecteuler.net/problem=6

# Solution by Kyle Owen and Alexander Leishman
# Find the difference between sum of squares and square of sum of integers 1-100 (or 1 - n in the general case)

# Calculate sum of squares

# Get user to input the max number n (100 in this case) 

print "Input Max Number"
n = gets.strip.to_f

# Calculate sum of squares using (n^3)/3+(n^2)/2+n/6    (Standard formula)
# Calculate square of sum using (n*(n+1)/2)^2           (Standard formula)

a = n*((n+1)/2)**2 		# Square of sum
b = n*(n+1)*(2*n+1)/6	# Sum of squares
puts a
puts b
diff = (n*(n+1)/2)**2 - ((n**3)/3+(n**2)/2+n/6)			#Note, this is redundant, but leaving it to show error checking trail
puts diff

# IN THIS PROBLEM I LEARNED TO BE CAREFUL WITH FLOATS AND INTS IN RUBY

# ((n**3)/3+(n**2)/2+n/6) Note, this formula does not work. It calculates a value that is 1 away
# from the actual solution. Not sure why. UPDATE: Now know why, must be defined as a float
# Output for n=100 is 25164151

