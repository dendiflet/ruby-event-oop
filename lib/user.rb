require 'pry'

class User
	attr_accessor :email, :name
	@@all = []
	@@user_count = 0

	def initialize(email_to_save)
		@email = email_to_save
		@@user_count = @@user_count + 1
	  puts "quel est ton prénom stp"
    print "->  "
		@name = gets.chomp.to_s
		@@all << {"#{@name}" => @email }
		puts @@all
	end

	def self.user_counter
		return @@user_count
	end

	def self.all
		return @@all
	end

end

julie = User.new("julie@mail.com")

jean = User.new("jeannot@outlook.fr")

binding.pry
puts "end of file"

