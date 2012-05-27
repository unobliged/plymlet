module PassagesHelper

  def unique_words(content)
    @words = content.downcase.gsub(/[[:punct:]]/,"").split(' ').uniq.sort
    @words.map { |word| content_tag(:li, word) }
  end

  def definition_for_word
    
  end

end
