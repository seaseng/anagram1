get '/' do
  # Look in app/views/index.erb
  @anagrams = []
  erb :index
end

get '/:word' do

  original_word = params[:word]
  # "show a list of anagrams...#{params[:word]}"
  "Here is a list of anagrams for: #{original_word}"
  @anagrams = Word.anagrams(original_word)
  # @anagrams = [Word.first, Word.last]
  erb :index
end