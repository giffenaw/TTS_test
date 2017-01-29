class Pokemon
	attr_reader :name, :type
	attr_accessor :hp, :type, :move, :attack, :defense

	def initialize(name, type, move, hp, attack, defense)
		@name = name
		@type = type
		@move = move
		@hp = hp
		@attack = attack
		@defense = defense
	end

	def attack_enemy(move)
	end
end

class Ability
	attr_accessor :power, :speed

	def initialize(power, speed)
		@power = power
		@speed = speed
	end
end

scratch = Ablity.new(25, 10)
vine_whip = Ability.new(30, 10)
flamethrower = Ability.new(35, 8)
water_gun = Ability.new(28, 12)
spark = Ability.new(27, 15)

bulbasaur = Pokemon.new("Bulbasaur", "Grass", "Vine Whip", 88, 10, 16)
charmander = Pokemon.new("Charmander", "Fire", "Flamethrower", 90, 15, 10)
squirtle = Pokemon.new("Squirtle", "Water", "Water Gun", 85, 13, 12)
pikachu = Pokemon.new("Pikachu", "Electric", "Spark", 81, 16, 10)

puts "Choose your Pokemon!"
puts "1. #{bulbasaur.name}, the #{bulbasaur.type} Pokemon"
puts "2. #{charmander.name}, the #{charmander.type} Pokemon"
puts "3. #{squirtle.name}, the #{squirtle.type} Pokemon"
puts "4. #{pikachu.name}, the #{pikachu.type} Pokemon"
