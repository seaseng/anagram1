p "seed file"
File.open("words").each_line { |word| Word.create(name: word.chomp, sorted_name:  word.chomp.chars.sort.join(''))}
# File.open('words').readlines do |word|
  # p word
  # Word.create(name: word.chomp, sorted_name:  word.chomp.chars.sort.join(''))
# end

p File.open('words').readlines.class