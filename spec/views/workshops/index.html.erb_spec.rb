require 'rails_helper'

RSpec.describe "workshops/index", type: :view do
  before(:each) do
    assign(:workshops, [
      Workshop.create!(
        :location => "Location",
        :workshop_type_id => 1
      ),
      Workshop.create!(
        :location => "Location",
        :workshop_type_id => 1
      )
    ])
  end

  it "renders a list of workshops" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
