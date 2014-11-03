def reverser
	string = yield
	array = string.split.each {|word| word.reverse! }
	array.join(" ")
end

def adder
	num = yield
	1 + num
end
