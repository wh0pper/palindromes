require('rspec')
require('palindromes')

describe ('#is_pal') do
  it "splits input phrase or word into array of characters minus spaces" do
    text = Pals.new('racecar')
    expect((text.to_letters() - ['r','a','c','e','c','a','r']).empty?)
  end

  it "isolates letters in phrase of words" do
    text = Pals.new('lonely tylenol')
    expect((text.to_letters() - ['l','o','n','e','l','y','t','y','l','e','n','o','l']).empty?)
  end
end
