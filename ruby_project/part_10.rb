
class String #extend string 

	def palindrome?()
			
		string = self.downcase.gsub(/[^a-z]/,'') #pull out any weird characters  
		reverse = string.reverse()

		if (string == reverse)
			
			return true

		else 

			return false

		end
	end
end

module Enumerable #work with module enumerable

	def palindrome?()

		array = self
			
		reverse = self.reverse()

		if (array == reverse)
			
			return true

		else 

			return false

		end
	end
end

#puts palindrome?("Foof")
#puts palindrome?([1,2,3,2,1])
puts "With the new method:"
puts "foof".palindrome?
puts "sajljksadjklasd".palindrome?
puts [1,2,3,2,1].palindrome?
puts [1,5,1,1123123123].palindrome?