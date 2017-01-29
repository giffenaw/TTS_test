# Write a Rock, Paper, Scissors game where a user can play against the computer

# -The user should enter rock paper or scissors(remember to account for differences in capitalization!) and the computer will choose a random value

# -after each turn display the score (user wins vs. computer wins)

# -whichever player reaches 5 wins first is the winner!

# -try to use all of the things you've learned so far: variables, if statements, loops, arrays!

# player_score = 0	
# computer_score = 0
# options = ["Rock", "Paper", "Scissors"]

# while player_score < 5 && computer_score < 5
# 	puts "Rock, Paper, or Scissors?"
# 	player_choice = gets.chomp
# 	computer_choice = options[rand(0..2)]
# 	if player_choice.downcase == computer_choice.downcase
# 		puts "You both chose #{computer_choice}. The result is a tie!"
# 		puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 	elsif player_choice.downcase == "rock"
# 		if computer_choice = options[1]
# 			puts "The computer chose #{computer_choice}. The computer gets a point!"
# 			computer_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		else
# 			puts "The computer chose #{computer_choice}. You get a point!"
# 			player_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		end
# 	elsif player_choice.downcase == "paper"
# 		if computer_choice == options[2]
# 			puts "The computer chose #{computer_choice}. The computer gets a point!"
# 			computer_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		else
# 			puts "The computer chose #{computer_choice}. You get a point!"
# 			player_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		end
# 	else
# 		if computer_choice == options[0]
# 			puts "The computer chose #{computer_choice}. The computer wins!"
# 			computer_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		else
# 			puts "The computer chose #{computer_choice}. You win!"
# 			player_score += 1
# 			puts "Current score: Player #{player_score}, Computer #{computer_score}"
# 		end
# 	end
# end

# if player_score > computer_score
# 	puts "You win!"
# else
# 	puts "The computer wins!"
# end

# puts "Good game!"



# # Build an Inventory program.

# # Use a hash to store hard coded data
# # When a user requests to see the inventory, display the contents of your hash (which is your inventory)
# # Add an option to allow the user to add a completely new item to the inventory
# # Add an option to all the user to remove an item from the inventory

# inventory = {"plates" => 30, "napkins" => 100, "forks" => 50, "knives" => 10, "spoons" => 127}
# puts "What would you like to do? (View, Add, Remove, Exit)"
# action = gets.chomp

# while action.downcase != "view" && action.downcase != "add" && action.downcase = "remove" && action.downcase != "exit"
# 	puts "Invalid action. What would you like to do? (View, Add, Remove, Exit)"
# 	action = gets.chomp
# end

# until action.downcase == "exit"
# 	if action.downcase == "view"
# 		inventory.each do |item, count|
# 			puts "#{item}: #{count}"
# 		end
# 	elsif action.downcase == "add"
# 		puts "What would you like to add to your inventory?"
# 		new_item = gets.chomp
# 		puts "How many would you like to add?"
# 		new_count = gets.chomp
# 		inventory["#{new_item}"] = new_count
# 	else
# 		puts "What would you like to remove from your inventory?"
# 		inventory.delete(gets.chomp)
# 	end
# 	puts "What would you like to do? (View, Add, Remove, Exit)"
# 	action = gets.chomp

# 	while action.downcase != "view" && action.downcase != "add" && action.downcase != "remove" && action.downcase != "exit"
# 		puts "Invalid action. What would you like to do? (View, Add, Remove, Exit)"
# 		action = gets.chomp
# 	end
# end

# puts "Goodbye."

# Create an array to represent your shopping list with the following items: 'pop tarts', 'ramen noodles', 'chips', 'salsa', and 'coffee'.
# Add 'fruit loops' to the list.
# Update 'coffee' to 'fair trade coffee'
# Replace 'chips' and 'salsa' with 'rice' and 'beans'
# Create an empty array to represent your shopping cart.
# Remove the last item from your shopping list and add it to your cart
# Remove the first item from your shopping list and add it to the cart
# Write a 'while' loop that takes items from your shopping list and moves them to your cart until there are no items left on the list.
# Sort the items in your cart alphabetically... backwards
# Print the list of items in your shopping cart to the console as comma separated string.

shopping_list = ["pop tarts", "ramen noodles", "chips", "salsa", "coffee"]

shopping_list << "fruit loops"
shopping_list[4] = "fair trade coffee"
shopping_list[2,2] = ["rice", "beans"] #starting at index 2, define next 2 elements

shopping_cart = []
grocery_item = shopping_list[shopping_list.length - 1]
shopping_list.pop
shopping_cart.push("#{grocery_item}")
grocery_item = shopping_list[0]
shopping_list.shift
shopping_cart.push("#{grocery_item}")

list_size = shopping_list.length - 1
while list_size > 0
	grocery_item = shopping_list[0]
	shopping_list.shift
	shopping_cart.push("#{grocery_item}")
	list_size -= 1
end

# while list.length > 0
# 	cart.push(list.pop)
# end

shopping_cart.sort!
shopping_cart.reverse!

shopping_cart.each do |item|
	if item == shopping_cart[shopping_cart.length - 1]
		print "#{item}"
	else
		print "#{item}, "
	end
end

