gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind.rb'
require 'pry'

class TestMastermind < Minitest::Test

  def test_it_exists
    mastermind_instance = Mastermind.new

    assert_instance_of Mastermind, mastermind_instance
  end
end
