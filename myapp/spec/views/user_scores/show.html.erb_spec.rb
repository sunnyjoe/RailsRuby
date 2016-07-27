require 'spec_helper'

describe "user_scores/show" do
  before(:each) do
    @user_score = assign(:user_score, stub_model(UserScore,
      :name => "Name",
      :score => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
