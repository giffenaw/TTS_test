#Money Program

# puts "How much money do you have?"
# money = gets.chomp.to_f

# while (money < 0 || money > 10000)
# 	puts "Invalid amount. Try again."
# 	money = gets.chomp.to_f
# end

# puts "What game do you want to play?"
# game = gets.chomp

# if money == 77
# 	puts "I'm going to Vegas!"
# 	if game.downcase == "blackjack"
# 		puts game + "? That's a boring game."
# 	else
# 		puts "You should probably play something fun."
# 	end
# elsif money >= 100
# 	puts "Break out the champagne!"
# elsif money >= 50
# 	puts "I'm drinking good beer tonight!!!"
# else
# 	puts "I'm staying in and watching a movie."
# end


# #SNOW DAY CHALLENGE
# puts "What is the temperature?"
# temperature = gets.chomp.to_i
# while (temperature < 10) || (temperature > 100)
# 	puts "That doesn't sound right. What's the temperature?"
# 	temperature = gets.chomp.to_i
# end
# puts "What is the weather like?"
# weather = gets.chomp

# if temperature == 77
# 	puts "DANCE PARTY!"
# elsif (temperature > 90) && (weather.downcase != "raining")
# 	puts "We are going swimming!"
# elsif (temperature > 75) && (weather.downcase != "raining")
# 	puts "Let's go hiking!"
# elsif (temperature > 50) && (weather.downcase != "raining")
# 	puts "I have to do something outside..."
# elsif (temperature <= 50) && (temperature >= 32)
# 	puts "Gonna watch The Notebook with bae"
# elsif (weather.downcase == "snowing")
# 	puts "Let's go sledding outside!"
# else
# 	puts "We are making a fort in the living room and eating lots of cheese puffs."
# end

#Guess the number!
# rand_num = rand(20)
# guess = 30
# while (guess != rand_num)
# 	puts "Pick a number between 1 and 20"
# 	guess = gets.chomp.to_i
# end

# puts "You got it! The number was #{rand_num}."


#Guess the Random Number using Warmer/Colder...
rand_num = rand(1..20)
puts "Pick a number between 1 and 20."
new_guess = gets.chomp.to_i
guess = new_guess

while (new_guess != rand_num)
	if (rand_num - new_guess).abs > (rand_num - guess).abs
		puts "Getting colder..."
	elsif (rand_num - new_guess).abs < (rand_num - guess).abs
		puts "Getting warmer..."
	end
	guess = new_guess
	puts "Pick a new number."
	new_guess = gets.chomp.to_i
end

puts "Good job! The number was #{rand_num}!"