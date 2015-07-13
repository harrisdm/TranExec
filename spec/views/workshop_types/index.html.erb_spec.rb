require 'rails_helper'

RSpec.describe "workshop_types/index", type: :view do
  before(:each) do
    assign(:workshop_types, [
      WorkshopType.create!(
        :name => "Name"
      ),
      WorkshopType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of workshop_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
