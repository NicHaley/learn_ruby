def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)	# There is a deafult value of 1 if a second argument isn't given
	("#{string} " * num).strip
end

def start_of_word(string, num)
	string[0..(num - 1)]
end

def first_word(string)
	string.split[0]
end

def titleize(string)
	string.capitalize!
	array = string.split.each do |word| 
		unless word == "and" || word == "the" || word == "over"
			word.capitalize!
		end
	end
	string = array.join(" ")
end

puts titleize("and jack and gill went up the hill")