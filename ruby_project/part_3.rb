class Word_count_class #defines a clase
	def word_count(string)
		string = string.downcase() #downcases string
		word_array = string.scan(/\w+/) #makes new array, that is made up of the stirng split by words
		count = Hash.new(0) #makes a new hash 
		word_array.each{|w| count[w] += 1} #each individual word is a hash, and you add a new counter for each word
		puts count #puts the counts

	end
end

#work with sam
word_count_object = Word_count_class.new()

word_count_object.word_count("A man, a plan, a canal -- Panama")
word_count_object.word_count("Doo bee doo bee doo")
