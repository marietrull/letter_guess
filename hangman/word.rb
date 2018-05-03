class Word
	# attr_reader :letters, :letters_display
	# attr_accessor :letters, :letters_display
	def initialize word_choice
		# this is a local variable. Other word methods won't have access to it. 
		letters = word_choice.split('')
		# an array of objects like this would be nice
		# {letter: 'c', hidden: false}
		@letters_display = letters.map do |this_letter|
			{letter: this_letter, hidden: true}
		end
		@guesses = 0
	end
	def guesses
		@guesses += 1
	end

	def length
		@letters_display.length
	end

	def guess_letter input
		@letters_display.each do |ltr|
		if input == ltr[:letter]
			# puts "letter match!"
			ltr[:hidden] = false
		else
			# puts "______"
		end
	end
	end
	
	def render
		@letters_display.each do |ltr|
			if ltr[:hidden]
				print " _ "
			else 
				print ltr[:letter]
			end
		end

		puts ""
	end 


end