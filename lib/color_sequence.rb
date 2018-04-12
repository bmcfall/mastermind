class ColorSequence

  attr_reader :guess

  attr_accessor :colors

  def initialize
    @colors = ["rgby"]
    @guess = []
    @secret_sequence = random
  end

  def random
    @secret_sequence = @colors.sample
  end
  @secret_sequence
end
