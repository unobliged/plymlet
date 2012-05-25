require 'spec_helper'

describe "passages/index" do
  before(:each) do
    assign(:passages, [
      stub_model(Passage,
        :title => "Title",
        :author => "Author",
        :language => "Language",
        :content => "MyText"
      ),
      stub_model(Passage,
        :title => "Title",
        :author => "Author",
        :language => "Language",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of passages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
