#Code to solve Project Euler problem 4
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
#Find the largest palindrome made from the product of two 3-digit numbers.
#Solution by Kyle Owen and Alexander Leishman

pal=0
for i in 999.downto(100)
    for j in 999.downto(100)
		num = i*j
		if num.to_s.reverse.to_i-num == 0  #check to see if reverse of product is equal to product
            if num > pal
	    	pal = num
	    	i_final = i
	    	j_final = j
            end
            break	
		end
	end
end
puts pal
puts "final i = "
puts i_final
puts "final j = "
puts j_final

#solution = 906609