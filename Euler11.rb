#Euler problem number 11
#Solution by Alexander Leishman on 4/20/2013
#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 2020 grid?
#Note: matrix of numbers is located in Euler11.txt
#This will help me learn how to use matrices in Ruby

#Read data from Euler11.txt and put it into num_square variable
# f = File.open('Euler11.txt')
# a = f.readlines;
# puts a.class.name
# puts a[0][1]

matrix=[]  #Define empty matrix
array  = File.read("Euler11.txt").split(" ") #read all text data in
max_value = 0;
start_i = 3
start_j = 3
type = ""

for i in 0..19        #Break data into rows
	first = i*20 
	matrix[i]=array[first..first+19]
end

for i in 0..19
	for j in 0..19
		matrix[i][j] = matrix[i][j].to_i
	end
end



for ii in 0..16
	for jj in 0..16
		v1 = matrix[ii][jj]*matrix[ii+1][jj]*matrix[ii+2][jj]*matrix[ii+3][jj]
		# v2 = matrix[ii][jj+1]*matrix[ii+1][jj+1]*matrix[ii+2][jj+1]*matrix[ii+3][jj+1]
		# v3 = matrix[ii][jj+2]*matrix[ii+1][jj+2]*matrix[ii+2][jj+2]*matrix[ii+3][jj+2]
		v4 = matrix[ii][jj+3]*matrix[ii+1][jj+3]*matrix[ii+2][jj+3]*matrix[ii+3][jj+3]
		
		h1 = matrix[ii][jj]*matrix[ii][jj+1]*matrix[ii][jj+2]*matrix[ii][jj+3]

		h4 = matrix[ii+3][jj]*matrix[ii+3][jj+1]*matrix[ii+3][jj+2]*matrix[ii+3][jj+3]

		d1 = matrix[ii][jj]*matrix[ii+1][jj+1]*matrix[ii+2][jj+2]*matrix[ii+3][jj+3]

		d2 = matrix[ii][jj+3]*matrix[ii+1][jj+2]*matrix[ii+2][jj+1]*matrix[ii+3][jj]

		if v1 > max_value
			max_value = v1
			start_i = ii
			start_j = jj
			type = "v1"
		end

		if v4 > max_value
			max_value = v4
			start_i = ii
			start_j = jj
			type = "v4"
		end

		if h1 > max_value
			max_value = h1
			start_i = ii
			start_j = jj
			type = "h1"
		end

		if h4 > max_value
			max_value = h4
			start_i = ii
			start_j = jj
			type = "h4"
		end

		if d1 > max_value
			max_value = d1
			start_i = ii
			start_j = jj
			type = "d1"
		end

		if d2 > max_value
			max_value = d2
			start_i = ii
			start_j = jj
			type = "d2"
		end

	end
end
puts max_value
puts start_i
puts start_j
puts type




#Iterate by row and column the 4x4 multiplication possibilities
