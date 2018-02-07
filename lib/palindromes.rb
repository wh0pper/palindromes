class Pals
  def initialize()
    puts "Enter file name to search for palindromes:"
    @filename = gets.chomp
    # @input = input.to_s.downcase.gsub(/[[:punct:]]/, '')
  end

  # def to_letters
  #   @input.split(%r{\s*})
  # end

  def file_pals
    file = File.open("#{@filename}",'r')
    lines = file.readlines
    pal_counter = 0
    pal_tracker = []
    lines.each do |line|
      stripped = line.strip.downcase.gsub(/[[:punct:]]/, '')
      if(self.is_pal?(stripped))
        pal_counter += 1
        pal_tracker.push(line)
      end
    end
    return pal_counter, pal_tracker
  end

  def is_pal?(text)
    letters = text.split(%r{\s*})
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


pal = Pals.new()
ifpal = pal.file_pals()
puts "Total Palindromes: #{ifpal[0]}"
puts ifpal[1]
