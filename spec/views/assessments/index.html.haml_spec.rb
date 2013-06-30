require 'spec_helper'

describe "assessments/index" do
  before(:each) do
    assign(:assessments, [
      stub_model(Assessment,
        :competency => "Competency",
        :question => "Question",
        :name => "Name"
      ),
      stub_model(Assessment,
        :competency => "Competency",
        :question => "Question",
        :name => "Name"
      )
    ])
  end

  it "renders a list of assessments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Competency".to_s, :count => 2
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
