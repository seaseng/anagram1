class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagrams (word)
    Word.find_all_by_sorted_name(sorted_letters(word))
  end

  def self.sorted_letters(word)
    word.chars.sort.join('')
  end

end
