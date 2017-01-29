my_account = {
	"balance" => 500.03,
	"type" => "Checking"
}

# my_savings = {
# 	"balance" => 1203.82
# 	"type" => "Savings"
# }

def check_balance(balance)
	puts "Account balance: $#{sprintf('%.2f', balance)}"
end

def check_type(account)
	puts "Account type: account"
end

def deposit_money(balance, amount)
	balance += amount
	puts "Deposited: $#{sprintf('%.2f', amount)}"
	puts "Balance after deposit: $#{sprintf('%.2f', balance)}"
end

def withdraw_money(balance, amount)
	if amount > balance
		puts "You do not have enough money in your account."
	else
		balance -= amount
		puts "Withdrawn: $#{sprintf('%.2f', amount)}"
		puts "Balance after withdrawl: $#{sprintf('%.2f', balance)}"
	end
end

puts "Welcome to Bob's Bank."

while true
	puts "What would you like to do?"
	puts "1. Check account balance."
	puts "2. Check account type."
	puts "3. Deposit funds."
	puts "4. Withdraw funds."
	puts "5. Exit."

	choice = gets.chomp

	case choice
	when "1"
		check_balance(my_account["balance"])
	when "2"
		check_type(my_account["type"])
	when "3"
		puts "How much would you like to deposit?"
		deposit = gets.chomp.to_f
		deposit_money(my_account["balance"], deposit)
	when "4"
		puts "How much would you like to withdraw?"
		withdrawl = gets.chomp.to_f
		withdraw_money(my_account["balance"], withdrawl)
	when "5"
		break
	end
end

puts "Thank you for choosing Bob's Bank. Have a great day!"