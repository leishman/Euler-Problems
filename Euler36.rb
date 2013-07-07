# Euler Problem 36
# Solution by Kyle Owen and Alexander Leishman July 7, 2013
# Problem Text:
# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

# Check if number is palindrome in base 10
def pal_b10?(num)
	if num.to_s.reverse == num.to_s
		return true
	else
		return false
	end
end

# Check to see if number is palindrome in binary
def pal_bin?(num)
	if num.to_s(2)== num.to_s(2).reverse
		return true
	else
		return false
	end
end

# Initialize Array to increment through (should I use these for loops??, probably a better way)
ints = Array(1..1_000_000)
pal_sum = 0


# Increment through array and add number to pal_sum if it is a b2 and b10 palindrome
ints.each do |num|
	if pal_b10?(num) && pal_bin?(num)
		pal_sum += num
	end
end

# Print the final result
puts "The sum of all palindromes is #{pal_sum}"
