module PassagesHelper
  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq.sort
  end

  def define_word(word)
    @cedict = 'cedict.txt'
    @word_matches = File.readlines(@cedict).grep(/#{word}/)

    @match = []

    @word_matches.each do |x|
      @match = x.split
      #return x if @match[0].include?(word) or @match[1].include?(word)
      return x if @match[0]==(word) or @match[1]==(word)
    end

# Old code from testing zidian and wordnet
#    @cnword = Zidian.find(word)   
#    lemmas = WordNet::WordNetDB.find(word)
#    synsets = lemmas.map { |lemma| lemma.synsets }
#    words = synsets.flatten
#    words.each { |word| puts word.gloss }
  end

end
