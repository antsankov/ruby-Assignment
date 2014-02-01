def glob_match(filenames, pattern)
	out = []

	filenames.each{ |w| out << w unless !(File.fnmatch?(pattern,w,File::FNM_DOTMATCH)) } #use unix to do the work for us, add to the set unless it doesn't match the pattern
	return out
end

puts glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*")