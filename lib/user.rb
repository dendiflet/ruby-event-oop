require 'pry'

class User
	attr_accessor :email, :name
	@@all = []
	@@user_count = 0

	def initialize(email_to_save, name = nil)
		@email = email_to_save
		@@user_count = @@user_count + 1

    #petite condition pour faciliter les tests

    if name == nil		
	    puts "stp quel est ton prénom a enregister avec cet email : #{@email}"
      print "->  "
		  @name = gets.chomp.to_s
		else
		  	@name = name
    end

		@@all << {"#{@name}" => @email }
		#affichage de l'array d'utilisateurs
		puts @@all
	end

	def self.user_counter
		return @@user_count
	end

	def self.all
		return @@all
	end

end

#création d'un utilisateur dans le fichier pour les tests
julie = User.new("julie@mail.com")	#va automatiquement demander le nom 

#deuxième personnage
jean = User.new("jeannot@outlook.fr")	#direct le prog demande le nom



#binding.pry
puts "end of file"

