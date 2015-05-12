def wordCount(text)
	words = text.split(" ")
	frequencies = Hash.new(0)
	words.each { |word| frequencies[word] += 1}
	frequencies = frequencies.sort_by {|a, b| b }
	frequencies.reverse!
	frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
end

wordCount("this is me is this me then what")