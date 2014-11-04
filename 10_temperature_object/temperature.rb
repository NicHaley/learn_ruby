class Temperature

	def initialize(options)
		@f = options[:f]
		@c = options[:c]
	end

	def self.in_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

	def self.in_celsius(temp)
		Temperature.new({:c => temp})
	end

	def to_fahrenheit
		if @f
			@f
		else
			(@c * 9/5) + 32
		end
	end

	def to_celsius
		if @c
			@c
		else
			(@f - 32) * 5/9
		end
	end

end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)			# Super overrides values from parent class 
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end