require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first => "First",
        :last => "Last",
        :email => "Email",
        :admin => "",
        :interviewee => "",
        :password => "Password",
        :rememberToken => "Remember Token"
      ),
      stub_model(User,
        :first => "First",
        :last => "Last",
        :email => "Email",
        :admin => "",
        :interviewee => "",
        :password => "Password",
        :rememberToken => "Remember Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Remember Token".to_s, :count => 2
  end
end
