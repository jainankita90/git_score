module ScoreRule
		RULES = {
			:IssuesEvent => 7,
			:IssueCommentEvent => 6,
			:PushEvent => 5,
			:PullRequestReviewCommentEvent => 4,
			:WatchEvent => 3,
			:CreateEvent => 2
} 
		
		def get_rule(event_name, default_value=1)
			RULES.fetch(event_name, default_value)
		end	
end
