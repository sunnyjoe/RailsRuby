require 'spec_helper'

describe "user_scores/index" do
  before(:each) do
    assign(:user_scores, [
      stub_model(UserScore,
        :name => "Name",
        :score => 1
      ),
      stub_model(UserScore,
        :name => "Name",
        :score => 1
      )
    ])
  end

  it "renders a list of user_scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
