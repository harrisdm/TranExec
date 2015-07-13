require 'rails_helper'

RSpec.describe "workshop_types/new", type: :view do
  before(:each) do
    assign(:workshop_type, WorkshopType.new(
      :name => "MyString"
    ))
  end

  it "renders new workshop_type form" do
    render

    assert_select "form[action=?][method=?]", workshop_types_path, "post" do

      assert_select "input#workshop_type_name[name=?]", "workshop_type[name]"
    end
  end
end
