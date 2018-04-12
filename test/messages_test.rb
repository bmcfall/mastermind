gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'
require 'pry'

class MessageTest < Minitest::Test

  def test_message_exists
    message_1 = Messages.new

    assert_instance_of Messages, message_1
  end

  def test_welcome_message
    welcome_1 = Messages.new

    assert_equal "Welcome to MASTERMIND! Would you like to (p)lay, read the (i)nstructions, or (q)uit?", welcome_1.welcome
  end

  def test_begin_game_flow
    start_1 = Messages.new

    assert_equal "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?", start_1.start
  end
end
