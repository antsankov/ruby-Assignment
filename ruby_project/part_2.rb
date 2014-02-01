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

palindrome?("A man, a plan, a canal -- Panama")
puts "this should be true"  # => true
palindrome?("Garbage")
puts "this should be false"
palindrome?("Madam, I'm Adam!") 
puts "this should be true"                 # => true
palindrome?("Racecar")
puts "this should be true"
palindrome?("Abracadabra")
puts "this should be false"                       # => false (nil is also ok)

