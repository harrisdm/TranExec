require 'rails_helper'

RSpec.describe "workshop_types/show", type: :view do
  before(:each) do
    @workshop_type = assign(:workshop_type, WorkshopType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
