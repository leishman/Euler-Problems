# Euler Problem 98
# Anagramic Squares
# Solution by Alexander Leishman May 2013

# By replacing each of the letters in the word CARE with 1, 2, 9, and 6 respectively, 
# we form a square number: 1296 = 362. What is remarkable is that, by using the same digital substitutions, 
# the anagram, RACE, also forms a square number: 9216 = 962. We shall call CARE (and RACE) a square anagram word pair 
# and specify further that leading zeroes are not permitted, neither may a different letter have the same digital value as another letter.

# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, find all 
# the square anagram word pairs (a palindromic word is NOT considered to be an anagram of itself).

# What is the largest square number formed by any member of such a pair?

#[ABL] Clarification: all permutations of digits in a word need to be tried, so CAVE can be 1234 or 2345 or 3142, but they need to be perfect squares




words = File.read("words.txt").split(",").map(&:strip)
words.sort_by! { |x| x.length }
words.reverse!
# words = words[1..100]
# puts words.length
# words = ["AA","ABC","CCAABBL"]


#Create alphabet array
alphabet = ('A'..'Z').to_a

#Create blank array to store codes of the words

#Iterate each of the words

code = []
j = 0;		#Define counter for the freq loop

words.each_with_index do |word, index|
	alphabet.each do |letter|
		freq = word.count letter
		if freq != 0
			if j == 0
				code[index] = "#{freq}#{letter}"					
				j += 1
			else
				code[index] << "#{freq}#{letter}"
			end
		end
	end
	j = 0
end

# puts code

#Define array of Anagrams
anagrams =  []
anagrams_index = []
#Find location of matching codes

i = 0;   	#Define counter for the anagram array
code.each_with_index do |c, index|
	first = code.index c
	last = code.rindex c
	# puts first
	# puts "last = #{last}"

	if first != last
		puts words[first]
		puts words[last]
		
		if !anagrams_index.index first
			anagrams[i] = words[first]
			anagrams[i+1] = words[last]
			anagrams_index[i] = first
			anagrams_index[i+1] = last
		 	i += 2
		 end
		# puts i
	end

end

puts anagrams

anagrams.each { }


#Found that longest anagram pair is REDUCTION/INTRODUCE
#Find perfect squares that match this pair (length of words is 9)

squares = []
num = (0..31623).to_a
num.each_with_index { |n,index| squares[index] = n ** 2 }
squares.collect! { |num| num.to_s }
squares.each { |num| num.sub!('1','a')}

#Find anagrams in the squares array
k = 0
digits = (0..9).to_a
squares.each_with_index do |word, index|
	digits.each do |letter|
		freq = word.count letter
		if freq != 0
			if k == 0
				code[index] = "#{freq}#{letter}"					
				k += 1
			else
				code[index] << "#{freq}#{letter}"
			end
		end
	end
	j = 0
end



# sqr_rts = Array.new(10000..31623){ |num| num ** 2 } #longest anagram words are 9 char. The square root of 9 nines in a row is ~31623




#Iterate for each letter to develop the code




#Find the Anagrams
#there is a prime method. Maybe i can write an equation to multiply the number of each
#another posibmility is to have code for each word 2a3g1r1t1y to use to match others
#Create array of alphabet
#Create new array with code for each word
#Find matching codes within the array and identify the words



#Find primes for these words








#Determine the frequency of each letter in a word


#In order for Anagram:
	#Frequency of same letters must be the same



#Find matching numbers for the Anagrams


#Determine the frequency of each digit

#Determine the length of the number












#Find the words of equal length with same letters

#Create list of perfect squares

# sqr_rts = Array.new(9999999){ |num| num ** 2 } #longest words are 14 char. The square root of 14 nines in a row is ~9999999.9



# puts words

#Read Text file into array

#Turn words into numbers

