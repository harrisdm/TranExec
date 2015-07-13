require 'rails_helper'

RSpec.describe "phone_session_types/index", type: :view do
  before(:each) do
    assign(:phone_session_types, [
      PhoneSessionType.create!(
        :name => "Name"
      ),
      PhoneSessionType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of phone_session_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
