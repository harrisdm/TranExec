require 'rails_helper'

RSpec.describe "phone_session_types/new", type: :view do
  before(:each) do
    assign(:phone_session_type, PhoneSessionType.new(
      :name => "MyString"
    ))
  end

  it "renders new phone_session_type form" do
    render

    assert_select "form[action=?][method=?]", phone_session_types_path, "post" do

      assert_select "input#phone_session_type_name[name=?]", "phone_session_type[name]"
    end
  end
end
