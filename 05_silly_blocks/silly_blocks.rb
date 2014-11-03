def reverser
	string = yield
	array = string.split.each {|word| word.reverse! }
	array.join(" ")
end

def adder(n=1)
	num = yield
	n + num
end

def repeater(n = 1)
	n.times do
		yield
	end
end