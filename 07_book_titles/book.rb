class Book

	attr_reader :title

	@@word_array = ["the", "a", "and", "of", "if", "an", "in"]

	def title=(string)					# This is a speical attr writer essentially!
		string.capitalize!
		array = string.split.each do |word|
			unless @@word_array.include?(word)
				word.capitalize!
			end
		end
		@title = array.join(" ")
	end

end
