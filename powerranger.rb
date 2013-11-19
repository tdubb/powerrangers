class Person
	attr_accessor :name, :cafeine_level,

	def initialize(name)
		@cafeine_level = 100
		@name = name
	end

	def run
		puts "I am running."
		@cafeine_level -= 15
	end

	def scream
		puts "Ahhhhhhhhh"
		@cafeine_level -= 5
	end

	def drink_coffee(x_oz)
		puts "I feel great!"
		@cafeine_level += 20
	end
end

class PowerRanger
end

class EvilNinja
end
