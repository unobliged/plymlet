require 'spec_helper'

describe "passages/edit" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :title => "MyString",
      :author => "MyString",
      :language => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit passage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passages_path(@passage), :method => "post" do
      assert_select "input#passage_title", :name => "passage[title]"
      assert_select "input#passage_author", :name => "passage[author]"
      assert_select "input#passage_language", :name => "passage[language]"
      assert_select "textarea#passage_content", :name => "passage[content]"
    end
  end
end
