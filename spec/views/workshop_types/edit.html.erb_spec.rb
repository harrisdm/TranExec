require 'rails_helper'

RSpec.describe "workshop_types/edit", type: :view do
  before(:each) do
    @workshop_type = assign(:workshop_type, WorkshopType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit workshop_type form" do
    render

    assert_select "form[action=?][method=?]", workshop_type_path(@workshop_type), "post" do

      assert_select "input#workshop_type_name[name=?]", "workshop_type[name]"
    end
  end
end
