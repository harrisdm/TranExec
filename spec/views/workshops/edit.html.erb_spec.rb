require 'rails_helper'

RSpec.describe "workshops/edit", type: :view do
  before(:each) do
    @workshop = assign(:workshop, Workshop.create!(
      :location => "MyString",
      :workshop_type_id => 1
    ))
  end

  it "renders the edit workshop form" do
    render

    assert_select "form[action=?][method=?]", workshop_path(@workshop), "post" do

      assert_select "input#workshop_location[name=?]", "workshop[location]"

      assert_select "input#workshop_workshop_type_id[name=?]", "workshop[workshop_type_id]"
    end
  end
end
