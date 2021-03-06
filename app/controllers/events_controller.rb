class EventsController < ApplicationController
	def index
    	@events = Event.recent
    	@h = Time.now.hour
			@time = Time.now.strftime("%A, %d %B %Y %I:%M %p")
  	end

  	# only for development environment
  	def push
  		event = Event.new(user_id: User.first.id, category_id: Category.first.id, subcategory_id: 1, name: Faker::Food.ingredient, description: Faker::Lorem.sentence, event_time: Faker::Time.between(Date.today, 50.days.after))
  		event.save
  	end
end
