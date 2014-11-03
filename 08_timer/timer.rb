class Timer

	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		"00:00:#{@seconds}"
	end
end

# @timer = Timer.new

# puts @timer.seconds