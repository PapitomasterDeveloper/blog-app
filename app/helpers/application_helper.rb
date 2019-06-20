module ApplicationHelper
	def get_season()
		 time = Time.new

		if(time.month >= 3) && (time.month <= 5)
			"It's going to be hot in Monterrey"
		elsif(time.month > 5) && (time.month <= 8)
			"It's almost my birthday!"
		elsif(time.month > 8) && (time.month <= 10)
			"My birthday was on August and is almost Fall"
		else
			"Winter is coming"
		end
	end

	def get_random_number(max_value = 10)
		rand(max_value)
	end

	def get_random_phrase()
		phrases_initial = ["Hey, what's up",
				   "Good day, sir",
				   "How is your day?"]

		phrases_middle = ["My day is going great",
				  "Amazing than yesterday",
				  "Marvelous week"]

		phrases_end = ["Goodbye everyone",
			       "See you another day fellas",
			       "I hope that we meet again"]
		
		"#{phrases_initial[rand(3)]} #{phrases_middle[rand(3)]} #{phrases_end[rand(3)]}"
	end

	def count_to_20()
		x = 1
		number_list = "0"
		
		loop do
			number_list = number_list + ", " + x.to_s
			x += 1
			break if x > 20
		end

		"#{number_list}"
	end

end
