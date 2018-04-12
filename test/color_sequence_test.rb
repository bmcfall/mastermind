gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/color_sequence'
require 'pry'

class TestSequenceColors < Minitest::Test

  def test_color_sequence_exists
    color_sequence_1 = ColorSequence.new
    assert_instance_of ColorSequence, color_sequence_1
  end

  def test_attributes
    color_sequence_1 = ColorSequence.new

    assert_equal ["r", "g", "b", "y"], color_sequence_1.colors
    assert_equal [], color_sequence_1.guess
  end

  def test_color_has_random_sequence
    color_sequence_1 = ColorSequence.new
    binding.pry
    refute color_sequence_1.colors == color_sequence_1.random
  end
end
