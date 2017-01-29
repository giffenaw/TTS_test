my_inventory = {
	"sugar" => 30,
	"chocolate chip" => 19,
	"peanut butter" => 4,
	"oatmeal" => 1
}

def show_inventory(inventory) #Displays our current inventory
	puts inventory
end

def add_cookie(inventory, cookie) #Adds a new type of cookie to the menu!
	if inventory.has_key?(cookie) == true #If the cookie is alreadiy on the menu, let the user know
		puts "We already sell that type of cookie!"
	else #If it's a new cookie, input a starting input amount andd add to my_inventory
		puts "How many #{cookie} cookies do we have in stock?"
		new_cookie = gets.chomp.to_i
		inventory[cookie] = new_cookie
	end
end

def remove_cookie(inventory, cookie)
	if inventory.has_key?(cookie) == true
		inventory.delete(cookie) #remove the cookie from our menu
	else
		puts "We don't sell that type of cookie!" #cookie is already off the menu
	end
end

def buy_cookie(inventory, cookie, quantity) #We want to purchase more of a cookie to sell
	if inventory.has_key?(cookie) == true #If the cookie is on our menu, purcchase more & add to our inventory
		inventory[cookie] += quantity
	else
		puts "We don't bake that type of cookie here!" #If cookie is not on our menu, don't buy it
	end
end

def sell_cookie(inventory, cookie, quantity) #Sell cookies to customers!
	if inventory.has_key?(cookie) == false #If we don't hae that cookie on our menu, we can't sell it.
		puts "We don't makbe type of that cookie here!"
	elsif inventory[cookie] < quantity #If we don't have enough cookies in our inventory, we can't fill the customer order.
		puts "We don't have that many cookie left!"
	else #Sell the cookies, yo.
		inventory[cookie] -= quantity
	end
end

while true #Keep doing this as long as we don't go home...
	puts "Welcome to Cookie Clickers!"
	puts "What would you like to do: "
	puts "1. Check inventory"
	puts "2. Add a new cookie to our inventory"
	puts "3. Remove a cookie from our inventory"
	puts "4. Buy more of a certain type of cookie"
	puts "5. Sell more of a certain type of cookie"
	puts "6. Go home for the day"

	choice = gets.chomp

	case choice
		when "1" #when we ask to see the inventory, we print the inventory
			show_inventory(my_inventory)
		when "2" #when we add a new type of cookie, ask what type and run add_cookie method
			puts "What kind of cookie would you like to add?"
			new_cookie = gets.chomp
			add_cookie(my_inventory, new_cookie)
		when "3" #when we remove a cookie, ask what type and run remove_cookie method
			puts "What kind of cookie would you like to remove?"
			existing_cookie = gets.chomp
			remove_cookie(my_inventory, existing_cookie)
		when "4" #ask what type and how many cookies to buy
			puts "What type of cookie would you like to buy more of?"
			bought_cookie = gets.chomp
			puts "How many would you like to buy?"
			amount = gets.chomp.to_i
			buy_cookie(my_inventory, bought_cookie, amount)
		when "5" #ask what type and how many cookies to sell
			puts "What type of cookie would you like to sell?"
			sold_cookie = gets.chomp
			puts "How many would you like to sell?"
			amount = gets.chomp.to_i
			sell_cookie(my_inventory, sold_cookie, amount)
		when "6" #go home
			break #break our while loop so we don't return to the menu
	end
end
