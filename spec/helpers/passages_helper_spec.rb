require 'spec_helper'

describe PassagesHelper do

  describe "#unique_words" do
    let(:passage) { FactoryGirl.create(:passage) }
    :passage.title.should eq("testFG")
#    @result = unique_words(:passage.content) 
#    result.to_set == result
  end 

  describe "#define_words_CEDICT" do

  end


end
