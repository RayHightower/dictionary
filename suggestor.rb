newword = ARGV[0]
puts "The word to be matched is #{newword}."

dictionary = File.readlines('./dictionary.txt')

clean_new_word = newword.chomp.downcase
matcharray =  []

dictionary.each do |word|
  word = word.chomp.downcase

  reg_word = Regexp.new(word)

  if reg_word =~ clean_new_word
    matcharray << word
  end
end

puts "Possible matches: \n #{matcharray}"


