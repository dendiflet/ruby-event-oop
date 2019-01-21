require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
		#créer un event
		standup = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
		 expect(standup.class).to eq(Event)
		end
	end


	describe 'postpone_24h' do
		it 'move the date one days after the inital date' do
		
		standup = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

		start_date = Time.parse("2019-01-13 09:00")
		new_date = start_date + 24 * 60 * 60
		
		expect(standup.postpone_24h).to eq(new_date)
	end
end

end