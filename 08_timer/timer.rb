class Timer

	attr_accessor :seconds, :minutes, :hours

	def initialize(seconds = 0)
		self.seconds = seconds
	end

	def seconds=(seconds)
		@seconds = seconds
		@minutes = (@seconds / 60).floor
		@hours = (@minutes / 60).floor
	end


	def time_string
		seconds_display = @seconds % 60
		minutes_display = @minutes % 60

		if seconds_display < 10
			second_string = "0#{seconds_display}"
		else
			second_string = "#{seconds_display}"
		end

		if minutes_display < 10
			minute_string = "0#{minutes_display}"
		else
			minute_string = "#{minutes_display}"
		end

		if @hours < 10
			hour_string = "0#{@hours}"
		else
			hour_string = "#{@hours}"
		end

		return "#{hour_string}:#{minute_string}:#{second_string}"

	end
end

@timer = Timer.new(66)

puts @timer.time_string
