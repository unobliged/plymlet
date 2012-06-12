module PassagesHelper

  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq
  end

# this method is only for looking up in CEDICT, Redis should be used later after rake
  def define_word_CEDICT(word)
    @cedict = 'cedict.txt'
    @word_matches = File.readlines(@cedict).grep(/#{word}/)

    # Could not use << operator without initializing @best_match, workaround?
    @best_match = []

    @word_matches.each do |x|
      # CEDICT lists simplified and traditional characters, space delimited
      # 学 = "學 学 [xue2] /to learn/to study/science/-ology/"
      @match = x.split

      if @match[0] == word || @match[1] == word
        @best_match << x
      end
    end

    return @best_match
  end

# rake passage_defs for this to work
  def define_word(word)
    REDIS.lrange(word, 0, -1)
  end

end
