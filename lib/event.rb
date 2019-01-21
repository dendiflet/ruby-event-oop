require 'pry'
require 'time'

class Event

	attr_accessor :start_date, :length, :title, :attendees
	@@event_number = 0

	def initialize(start_date, length, title, attendees)
		#ajout un event au compteur
		#@@event_number = @@event_number + 1

		@start_date = Time.parse(start_date)
		@length = length
		@title = title
		@attendees = attendees
	end
end

binding.pry

