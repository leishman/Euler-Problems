# Euler problem 5
# Solution by Alexander Leishman 
# April 2013

# Problem Text:
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# URL: http://projecteuler.net/problem=5

# Note: This is a very inefficient way of solving the problem. Kyle came up with sexier way. Need to discuss with him. 
# Current code takes about a minute ore two to find solution

for i in 20000..300000000 #Number range chosen through guess/check
	if i%20+i%19+i%17+i%16+i%13+i%11+i%9+i%7+i%5==0
		puts i
		break
	end
end
