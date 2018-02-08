require('rspec')
require('palindromes')

# describe ('setup methods') do
#   it "splits input phrase or word into array of characters minus spaces" do
#     text = Pals.new('racecar')
#     expect((text.to_letters() - ['r','a','c','e','c','a','r']).empty?)
#   end
#
#   it "isolates letters in phrase of words" do
#     text = Pals.new('lonely tylenol')
#     expect((text.to_letters() - ['l','o','n','e','l','y','t','y','l','e','n','o','l']).empty?)
#   end
# end

describe ('#is_pal') do
  it "tests for single world palindromes" do
    text = Pals.new()
    expect(text.is_pal?('racecar')).to(eq(true))
  end

  it "tests for single multi word palindromes" do
    text = Pals.new()
    expect(text.is_pal?('lonely tylenol')).to(eq(true))
  end

  it "tests for phrases with punctuation" do
    text = Pals.new()
    expect(text.is_pal?('a but tuba.')).to(eq(true))
  end

  it "tests for integer palindromes" do
    text = Pals.new()
    expect(text.is_pal?(12321)).to(eq(true))
  end
end
