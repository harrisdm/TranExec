require 'rails_helper'

RSpec.describe "phone_sessions/index", type: :view do
  before(:each) do
    assign(:phone_sessions, [
      PhoneSession.create!(
        :client_id => 1,
        :phone_session_type_id => 2,
        :phone => "Phone",
        :reminder => "Reminder",
        :email => "Email",
        :user_id => 3
      ),
      PhoneSession.create!(
        :client_id => 1,
        :phone_session_type_id => 2,
        :phone => "Phone",
        :reminder => "Reminder",
        :email => "Email",
        :user_id => 3
      )
    ])
  end

  it "renders a list of phone_sessions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Reminder".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
