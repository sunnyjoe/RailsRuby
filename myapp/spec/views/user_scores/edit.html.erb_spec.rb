require 'spec_helper'

describe "user_scores/edit" do
  before(:each) do
    @user_score = assign(:user_score, stub_model(UserScore,
      :name => "MyString",
      :score => 1
    ))
  end

  it "renders the edit user_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_scores_path(@user_score), :method => "post" do
      assert_select "input#user_score_name", :name => "user_score[name]"
      assert_select "input#user_score_score", :name => "user_score[score]"
    end
  end
end
