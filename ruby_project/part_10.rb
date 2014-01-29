class Words

	attr_accessor:word 

	def initialize(word)
		@word = word
	end

	def palindrome?()
		string = self.word

		if (string.is_a?(string))
			string = string.downcase
			string = string.gsub(/[^a-z]/,'')
			reverse = string.reverse()

			if (string == reverse)
			
				return true

			else 

				return false

			end
		else 

			array_reverse = string.reverse()
			if (string == array_reverse)

				return true

			else

				return false 
			end
		end 

	end
end 

Foo = Words.new("FooF")
#arr = Words.new([1,2,3,2,1])

Foo.palindrome?()