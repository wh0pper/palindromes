class Pals
  def initialize(input)
    @input = input
  end

  def to_letters
    @input.split(%r{\s*})
  end
end
