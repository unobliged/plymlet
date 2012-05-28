module PassagesHelper
  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq.sort
  end

  def define_word(word)
    lemmas = WordNet::WordNetDB.find(word)
    synsets = lemmas.map { |lemma| lemma.synsets }
    words = synsets.flatten
    words.each { |word| puts word.gloss }
  end

end
