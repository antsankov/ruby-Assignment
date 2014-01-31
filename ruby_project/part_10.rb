#TODO: FIND OUT HOW TO attach palindrom directly to string	
class String 

	def palindrome?()
			
		string = self.downcase.gsub(/[^a-z]/,'')
		reverse = string.reverse()

		if (string == reverse)
			
			return true

		else 

			return false

		end

		# else 
			
		# array_reverse = string.reverse()
		# 	if (string == array_reverse)

		# 		return true

		# 	else

		# 		return false
		# 	end
		# end
	end
end

class Array

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