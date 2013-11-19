class Person
	attr_accessor :name, :cafeine_level

	def initialize(name)
		@cafeine_level = 100
		@name = name
	end

	def run
		puts "sound of someone running."
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

class PowerRanger < Person
	attr_accessor :strength, :color, :cafeine_level, :name

	def initialize(strength = 100, color, name)
		@strength = strength
		@color = color
		@cafeine_level = 300
	end

	def punch(person)
		if self.strength > 5
			puts 2.times "#{person.scream}: #{person.run}."
			person.cafeine_level -= 20
			@strength -= 5
		else
			puts "#{person.scream}: #{person.run}."
			person.cafeine_level -= 5
			@strength -= 2
		end
	end

	def rest(time_in_minutes)
		@strength += (time_in_minutes * 2)
	end

	def use_megazord(person)
		if self.strength > 50000
			puts 2.times "#{person.scream}: #{person.run}."
			person.cafeine_level -= 10000
			@strength -= 5000
		else
			puts "I'm too week"
			person.cafeine_level += 20
			@strength -= 50
		end
	end

end

class EvilNinja < Person
	attr_accessor :strength, :evilness, :cafeine_level, :name

	def initialize(cafeine_level, strength = 200, name)
		@strength = strength
		@evilness = 300
		@cafeine_level = cafeine_level
		@name = name
	end

	def cause_mayhem(person)
		person.cafeine_level = 0
end

bill = Person.new("Bill")
ted = Person.new("Ted")
orange = PowerRanger.new(6000, "orange", "orange")
blue = PowerRanger.new(55, "blue", "blue")
humpdy = EvilNinja.new(3000, "humpdy")
dumpdy = EvilNinja.new(25, "dumpdy")

bill.run
orange.punch(bill)
humpdy.cause_mayhem(blue)


