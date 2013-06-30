require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first => "First",
      :last => "Last",
      :email => "Email",
      :admin => "",
      :interviewee => "",
      :password => "Password",
      :rememberToken => "Remember Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First/)
    rendered.should match(/Last/)
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Password/)
    rendered.should match(/Remember Token/)
  end
end
