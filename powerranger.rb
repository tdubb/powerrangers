module Fight
	def fight
		bill = Person.new("Bill")
		ted = Person.new("Ted")
		orange = PowerRanger.new(60000, "orange", "orange")
		blue = PowerRanger.new(55, "blue", "blue")
		humpdy = EvilNinja.new(3000, "humpdy")
		dumpdy = EvilNinja.new(25, "dumpdy")
		bill.run
		orange.punch(bill)
		humpdy.cause_mayhem(blue)
		blue.drink_coffee(10)
		dumpdy.scream
		blue.punch(ted)
		ted.run
		orange.rest(200)
		orange.use_megazord(dumpdy)
	end
end

class Person
	attr_accessor :name, :cafeine_level

	def initialize(name)
		@cafeine_level = 100
		@name = name
		puts "#{self.name}"
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
	include Fight
	attr_accessor :strength, :color, :cafeine_level, :name

	def initialize(strength = 100, color, name)
		@strength = strength
		@color = color
		@cafeine_level = 300
		@name = name
		puts "#{self.name}"
	end

	def punch(person)
		if self.strength > 5
			puts "#{person.scream}: #{person.run}."
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
			puts 2.times {"#{person.scream}: #{person.run}."}
			person.cafeine_level -= 10000
			@strength -= 5000
			puts "#{person.name}: I thing I'll go to sleep, #{self.name}: me too."
		else
			puts "I'm too week"
			person.cafeine_level += 20
			@strength -= 50
		end
	end

end

class EvilNinja < Person
	include Fight
	attr_accessor :strength, :evilness, :cafeine_level, :name

	def initialize(cafeine_level, strength = 200, name)
		@strength = strength
		@evilness = 300
		@cafeine_level = cafeine_level
		@name = name
		puts "#{self.name}"
	end

	def cause_mayhem(person)
		person.cafeine_level = 0
		puts "#{person.name}: my cafeine level is #{person.cafeine_level}, I need a drink."
	end
end

# bill = Person.new("Bill")
# ted = Person.new("Ted")
# orange = PowerRanger.new(60000, "orange", "orange")
# blue = PowerRanger.new(55, "blue", "blue")
# humpdy = EvilNinja.new(3000, "humpdy")
# dumpdy = EvilNinja.new(25, "dumpdy")

# def fight
# 	bill.run
# 	orange.punch(bill)
# 	humpdy.cause_mayhem(blue)
# 	blue.drink_coffee(10)
# 	dumpdy.scream
# 	blue.punch(ted)
# 	ted.run
# 	orange.rest(200)
# 	orange.use_megazord(dumpdy)
# end



