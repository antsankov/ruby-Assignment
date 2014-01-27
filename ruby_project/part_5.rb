def combine_anagrams(words)
	words.each{
		|a| a.downcase
		a = a.chars.sort.join
		puts a
 
	}
    # your code here

end

#Example test case:

 combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])

# output: [ ["cars", "racs", "scar"],

#           ["four"],

#           ["for"],

#           ["potatoes"],

#           ["creams", "scream"] ]