require 'httparty'
require_relative 'git_score/user_event'



def run()
	user_event = UserEvent.new('dhh')
	puts "\nDHH's github score is #{user_event.score}\n\n"

end

run()

