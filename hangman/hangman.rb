# print "What's your name?"
# input = gets.chomp #this will get rid of \n
# puts "Your name appears to be #{input}"
# puts "^^new line"

require_relative "word"

dictionary = ["dolphin", "donut", "popcorn", "tiger", "ridiculous", "spectacular", "perspective", "constitution", "MaryPoppins", "antidisestablishmentarianism", "black lung"]

word = Word.new dictionary.sample

# pp word
# puts word.letters_display
puts word.render

loop do

print "You have guessed #{word.guesses} times."
print "Try a Letter! Hint: The word is #{word.length} letters:"
input = gets.chomp

puts word.guess_letter input

word.guesses

puts word.render

end

#If they get it right
#Note: If you create an infinite loop, use break to get out of it
# loop do
# 	if input == word
# 		puts "YAY! You got it. The word was #{word}."
# 		break #exit the loop because they guessed the word
# 	else
# 		puts "Sorry! Wrong guess."
# 		puts "(t)ry again or (q)uit."
# 		again = gets.chomp.downcase

# 		break if again == "q"
# 		# if again == "q" then puts "Okay. Game Over." end #use then if you're writing a one line statement

# 	end
# end
#If they get it wrong

