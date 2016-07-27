require 'spec_helper'

describe "user_scores/new" do
  before(:each) do
    assign(:user_score, stub_model(UserScore,
      :name => "MyString",
      :score => 1
    ).as_new_record)
  end

  it "renders new user_score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_scores_path, :method => "post" do
      assert_select "input#user_score_name", :name => "user_score[name]"
      assert_select "input#user_score_score", :name => "user_score[score]"
    end
  end
end
