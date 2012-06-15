require 'spec_helper'

describe PassagesHelper do

# This test just checks to see if the output of unique_words helper method has any duplicate words by checking its output against the set version of it (to_set)
  describe "#unique_words" do
    let(:passage) { FactoryGirl.create(:passage) }

#   Finally managed to get it to work! Use this example:
#   it { passage.title.should eq("testFG") }

    it do 
      @result = unique_words(passage.content) 
      @result.to_set == @result
    end
  end 

# This test is just to make sure it finds the CEDICT file (cedict.txt in the application directory and also tests that it can read the lines
  describe "#define_words_CEDICT" do
    it do
      File.exist?('cedict.txt').should be_true
      File.open('cedict.txt').readlines.empty?.should be_false
    end
  end


end
