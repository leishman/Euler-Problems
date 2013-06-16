#Solution to Euler problem 6
#Solution by Kyle Owen and Alexander Leishman
#difference between sum of squares and square of sum from 1-100

#Calculate sum of squares

#Get user to input n
print "Input Max Number"
n = gets.strip.to_f

#Calculate sum of squares using (n^3)/3+(n^2)/2+n/6
#Calculate square of sum using (n*(n+1)/2)^2
a = n*((n+1)/2)**2
b = n*(n+1)*(2*n+1)/6
puts a
puts b
diff = (n*(n+1)/2)**2 - ((n**3)/3+(n**2)/2+n/6)
puts diff


#((n**3)/3+(n**2)/2+n/6) Note, this formula does not work. It calculates a value that is 1 away
#from the actual solution. Not sure why. UPDATE: Now know why, must be defined as a float
#Output for n=100 is 25164151

