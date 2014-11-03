def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 -  num2
end

def sum(array)
	array.inject(0) {|x,y| x + y}
end

def multiply(array)
	array.inject (1) {|x, y| x * y}
end


