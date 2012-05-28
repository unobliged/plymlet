module PassagesHelper

  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq.sort
  end

  def definition_for_word
    
  end

end
