#Euler problem 5
#Very bad way of solving the problem. Talk to kyle to figure out better way

for i in 20000..300000000
	if i%20+i%19+i%17+i%16+i%13+i%11+i%9+i%7+i%5==0
		puts i
		break
	end
end
