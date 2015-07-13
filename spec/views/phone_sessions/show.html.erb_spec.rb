require 'rails_helper'

RSpec.describe "phone_sessions/show", type: :view do
  before(:each) do
    @phone_session = assign(:phone_session, PhoneSession.create!(
      :client_id => 1,
      :phone_session_type_id => 2,
      :phone => "Phone",
      :reminder => "Reminder",
      :email => "Email",
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Reminder/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/3/)
  end
end
