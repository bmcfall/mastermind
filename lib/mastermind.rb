require './lib/messages.rb'
require './lib/mastermind.rb'

class Mastermind

  def initialize
    @game_start = game_start
  end

  def game_start
    puts Messages.new.welcome
  end

end
