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
	  return @start_date
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

  def to_s
  	puts "Titre : #{@title}"
  	puts "Date de début : #{@start_date.to_s[0...-9]}"
  	puts "Durée : #{length} minutes"
  	puts "Invités : #{@attendees.join(",  ")}"
  end

end

stand_up = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])


#binding.pry
