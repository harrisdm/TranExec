require 'rails_helper'

RSpec.describe "workshops/new", type: :view do
  before(:each) do
    assign(:workshop, Workshop.new(
      :location => "MyString",
      :workshop_type_id => 1
    ))
  end

  it "renders new workshop form" do
    render

    assert_select "form[action=?][method=?]", workshops_path, "post" do

      assert_select "input#workshop_location[name=?]", "workshop[location]"

      assert_select "input#workshop_workshop_type_id[name=?]", "workshop[workshop_type_id]"
    end
  end
end
