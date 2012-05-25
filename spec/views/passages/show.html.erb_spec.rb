require 'spec_helper'

describe "passages/show" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :title => "Title",
      :author => "Author",
      :language => "Language",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Language/)
    rendered.should match(/MyText/)
  end
end
