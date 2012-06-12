task :passage_defs => :environment do

# Initial rake task will only do Passage #4 to keep testing simple
# Passage #4 is the only Chinese passage and we are testing CEDICT lookup

  require "#{Rails.root}/app/helpers/passages_helper"
  include PassagesHelper

  p = Passage.find(4).content
  unique_words(p).each do |x|
    define_word_CEDICT(x).each do |y|
      REDIS.rpush(x, y)
    end
  end

#  Use this format to iterate over all Passages for later
#  Passage.all.each do |x|
#    puts x.title
#  end

end
