class Pals
  def initialize(input)
    @input = input.to_s.downcase.gsub(/[[:punct:]]/, '')
  end

  # def to_letters
  #   @input.split(%r{\s*})
  # end

  def is_pal?
    letters = @input.split(%r{\s*})
    rev_index = letters.length-1
    index = 0
    while index < (letters.length/2)
      if !(letters[index] == letters[rev_index])
        return false
      else
        index += 1
        rev_index -=1
      end
    end
    return true
  end
end
