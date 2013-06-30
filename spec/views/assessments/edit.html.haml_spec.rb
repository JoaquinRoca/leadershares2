require 'spec_helper'

describe "assessments/edit" do
  before(:each) do
    @assessment = assign(:assessment, stub_model(Assessment,
      :competency => "MyString",
      :question => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit assessment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", assessment_path(@assessment), "post" do
      assert_select "input#assessment_competency[name=?]", "assessment[competency]"
      assert_select "input#assessment_question[name=?]", "assessment[question]"
      assert_select "input#assessment_name[name=?]", "assessment[name]"
    end
  end
end
