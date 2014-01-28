def glob_match(filenames, pattern)
	out = []

	filenames.each{ |w| out << w unless !(File.fnmatch?(pattern,w,File::FNM_DOTMATCH)) }
	return out
end

puts glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*")