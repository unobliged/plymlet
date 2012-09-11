task :passage_defs => :environment do

#  Use this to save words and defs to each Passahe.vocab_list

require "#{Rails.root}/app/helpers/passages_helper"
include PassagesHelper

  Passage.all.each do |passage|
    unique_words(passage.content).each do |word|
      passage.vocab_list[word] = define_word_CEDICT(word) 
    end
    passage.save
  end
end
