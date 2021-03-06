require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first => "MyString",
      :last => "MyString",
      :email => "MyString",
      :admin => "",
      :interviewee => "",
      :password => "MyString",
      :rememberToken => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_first[name=?]", "user[first]"
      assert_select "input#user_last[name=?]", "user[last]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_admin[name=?]", "user[admin]"
      assert_select "input#user_interviewee[name=?]", "user[interviewee]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_rememberToken[name=?]", "user[rememberToken]"
    end
  end
end
