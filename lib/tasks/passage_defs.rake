task :passage_defs => :environment do

#  Use this to save words and defs to each Passahe.vocab_list

require "#{Rails.root}/app/helpers/passages_helper"
include PassagesHelper

  Passage.all.each do |passage|
    passage.vocab_list = {}
    unique_words(passage.content).each do |word|
      if passage.language == "chinese"
        passage.vocab_list[word] = define_word_CEDICT(word) 
      elsif passage.language == "japanese"
        passage.vocab_list[word] = define_word_EDICT(word) 
      else
      # add a default action later
      end
    end
    passage.save
  end
end
