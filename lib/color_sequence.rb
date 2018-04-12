class ColorSequence

  attr_reader :guess

  attr_accessor :colors

  def initialize
    @colors = %W(r g b y)
    @guess = []
    @secret_sequence = random
  end

  def random
    4.times.map do
      @colors.sample
    end
  end
end
