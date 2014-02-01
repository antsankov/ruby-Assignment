def combine_anagrams(words)

	anagrams = words.group_by { |part| part.chars.sort }.values
	#first part, splits words into different parts.
	# for each part you sort the characters 
	#then group each of the words by their values. and put each of them into their necessary sets 
	anagrams.each{ |x| print x}
	#print 
	print "\n"

end

#Example test case:

 combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])

# output: [ ["cars", "racs", "scar"],

#           ["four"],

#           ["for"],

#           ["potatoes"],

#           ["creams", "scream"] ]