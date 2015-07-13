require 'rails_helper'

RSpec.describe "phone_session_types/edit", type: :view do
  before(:each) do
    @phone_session_type = assign(:phone_session_type, PhoneSessionType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit phone_session_type form" do
    render

    assert_select "form[action=?][method=?]", phone_session_type_path(@phone_session_type), "post" do

      assert_select "input#phone_session_type_name[name=?]", "phone_session_type[name]"
    end
  end
end
