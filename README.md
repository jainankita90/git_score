## DHH score challenge

David Heinemeier Hansson's github url is https://github.com/dhh .

Github provides information about his public commits in JSON 
format at 
https://api.github.com/users/dhh/events/public .

In the JSON data there is an attribute called "type" which denotes what kind of commit it was. 

Let's say that we give following score to DHH based on the "type" of the commit.

```
IssuesEvent = 7
IssueCommentEvent = 6
PushEvent = 5
PullRequestReviewCommentEvent = 4
WatchEvent = 3
CreateEvent = 2

Any other event = 1 
```

### Issue1 - DHH Score

A ruby program which when executed prints the score of https://github.com/dhh . 

Structure of git_score
<pre>.
├── Gemfile
├── Gemfile.lock
├── README.md
├── calculate_score.rb
├── git_score.gemspec
└── lib
    ├── git_score
    │   ├── score_rule.rb
    │   ├── user_event.rb
    │   └── version.rb
    └── git_score.rb
The answer printed on the terminal should be like this. 

This has dependency on httparty gem. so please checkout from dhh_score branch and run 
```
$bundle install
```
or 
```
$gem install httparty
```
then run
```
$ ruby calculate_score.rb

>> DHH's github score is xxx
```



