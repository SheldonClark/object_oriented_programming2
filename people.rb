class Person

	attr_reader :name

	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{name}"
	end

end

class Student < Person

	def initialize(name)
		super
	end

	def learn
		puts "I get it!"
	end

end

class Instructor < Person

	attr_reader :name

	def initialize(name)
		super
	end

	def teach
		puts "Everything in Ruby is an Object."
	end

end

chris = Instructor.new("Chris")
chris.greeting
chris.teach

cristina = Student.new("Cristina")
cristina.greeting
cristina.learn
cristina.teach
#cristina.teach doesn't work because the method teach is in the Instructor class
