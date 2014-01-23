class Word_count_class #defines a clase
	def word_count(string)
		string = string.downcase()
		word_array = string.scan(/\w+/) #makes new array, that is made up of the stirng split by words
		count = Hash.new(0)
		word_array.each{|w| count[w] += 1} #each individual word is w, 
		puts count

	end
end

#work with sam
word_count_object = Word_count_class.new()

word_count_object.word_count("A man, a plan, a canal -- Panama")
