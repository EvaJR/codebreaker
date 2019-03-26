module Codebreaker
  class Game
    def initialize(consoleOutput)
      @consoleOutput = consoleOutput
    end

    def start(secret)
    	@secret = secret
      @consoleOutput.puts 'Welcome to Codebreaker!'
      @consoleOutput.puts 'Enter guess:'
    end

    def guess(guess)
    	marker = Marker.new(@secret, guess)
			@consoleOutput.puts '+' * marker.exact_match_count + 
													'-' * marker.number_match_count
	 	end
  end
end