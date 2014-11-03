class Array
	def sum
		inject (0) {|x,y| x + y} # The mehtod is being called on itself, so can simply weite inject without a precursor!
	end

	def square
		new_array = map {|x| x ** 2}
	end

	def square!
		map! {|x| x ** 2}
	end
end
