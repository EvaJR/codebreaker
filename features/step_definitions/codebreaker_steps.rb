
class ConsoleOutput
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

# memoization: first time it's called, create a new variable
	# second time it's called, returns created variable
	# in tutorial, this method is called output, but this is an inbuilt method in newer RSpec version
def consoleOutput
  @consoleOutput ||= ConsoleOutput.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(consoleOutput)
  game.start('1234')
end

Then /^I should see "([^"]*)"$/ do |message|
  consoleOutput.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret| 
  @game = Codebreaker::Game.new(consoleOutput) 
  @game.start(secret)
end

When /^I guess "([^"]*)"$/ do |guess| 
  @game.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |mark| 
  consoleOutput.messages.should include(mark)
end