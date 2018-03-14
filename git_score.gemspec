require_relative 'lib/git_score/version'

Gem::Specification.new do |s|
  s.name        = 'git_score'
  s.version     = GitScore::VERSION
  s.date        = '2018-03-13'
  s.summary     = "Score!"
  s.description = "Score Calculator, calculates total score of a git user with given rule score using GIT URL"
  s.authors     = ["Ankita Jain"]
  s.email       = 'jainankita0290@gmail.com'
  s.files       = ["lib/git_score.rb"]
  s.homepage    =
    'http://rubyonrails.org/'
  s.license       = 'MIT'
  s.required_ruby_version = ">=2.4"
end