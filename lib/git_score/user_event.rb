require_relative 'score_rule'
class UserEvent
	include ScoreRule			
	attr_accessor :all_events, :activity_count
	# intializer for user events
	# fetches events for given url
	def initialize(user_name)
		url = "https://api.github.com/users/"+ user_name + '/events/public'
		begin
			@all_events =  HTTParty.get(url)
			event_count
		rescue => exception
			puts "Some error occured: #{exception}"
			@all_events =[]
			@activity_count={}
		end
	end

	# calculate score 
	def score
		@activity_count.inject(0){|total,i| total+i[1]*get_rule(i[0])}
	end
	

	# activity count 
	#all events format should be [{"type":2,..},{"type":'1',..}]
	def event_count
		@activity_count = Hash.new
		@all_events.each do |event|	
			if @activity_count.key?event["type"].to_sym
				@activity_count[event["type"].to_sym]+= 1 
			else
				@activity_count[event["type"].to_sym] = 1 
			end
		end
	end
end

