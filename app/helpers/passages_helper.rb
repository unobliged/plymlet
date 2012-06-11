module PassagesHelper

# I used unique_words in the rake task, perhaps this should be stored too?
  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq.sort
  end

# this method is only for looking up in CEDICT, Redis should be used later after rake
  def define_word_CEDICT(word)
    @cedict = 'cedict.txt'
    @word_matches = File.readlines(@cedict).grep(/#{word}/)

    @match = [] # this is used to parse possible matches from CEDICT

    @word_matches.each do |x|
      @match = x.split # CEDICT lists simplified and traditional, space delimited
      return x if @match[0]==(word) or @match[1]==(word)
    end
  end

# rake passage_defs for this to work
  def define_word(word)
    REDIS.get(word)
  end


# Old code from testing zidian and wordnet
#    @cnword = Zidian.find(word)   
#    lemmas = WordNet::WordNetDB.find(word)
#    synsets = lemmas.map { |lemma| lemma.synsets }
#    words = synsets.flatten
#    words.each { |word| puts word.gloss }

end
