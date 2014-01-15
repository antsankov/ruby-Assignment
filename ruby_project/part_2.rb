def palindrome?(string)
	string = string.downcase
	string = string.gsub(/[^a-z]/,'')
	reverse = string.reverse()
	if (string == reverse)
		puts "true"
	else 
		puts "false"
	end
end

palindrome?("A man, a plan, a canal -- Panama")  # => true
palindrome?("Garbage")
palindrome?("Madam, I'm Adam!")                  # => true
palindrome?("Racecar")
palindrome?("Abracadabra")                       # => false (nil is also ok)
