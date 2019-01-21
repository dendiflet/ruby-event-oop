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

	def postpone_24h
		original_date = @start_date
		@start_date = @start_date + 60 * 60 * 24 # 60secs * 60mn * 24h
	end

  def end_date
  	@end_date = @start_date + 60 * @length
  end

  def is_past
  	Time.now > @start_date
  end

  def is_future
  	!self.is_past
  end

  def is_soon
  	soon = @start_date - Time.now < 60 * 30 && start_date - Time.now > 0
  	if soon == true
  	  puts "depeche toi"
    end
    return soon
  end





end

binding.pry

