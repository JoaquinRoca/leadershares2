require 'spec_helper'

describe "assessments/show" do
  before(:each) do
    @assessment = assign(:assessment, stub_model(Assessment,
      :competency => "Competency",
      :question => "Question",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Competency/)
    rendered.should match(/Question/)
    rendered.should match(/Name/)
  end
end
