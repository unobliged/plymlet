task :redis_defs => :environment do
# Use this to push passage vocabulary word definitions to Redis
require "#{Rails.root}/app/helpers/passages_helper"
include PassagesHelper
  Passage.all.each do |passage|
    unique_words(passage.content).each do |word|
      REDIS.rpush(word, define_word_CEDICT(word).to_s)
    end
  end
end
