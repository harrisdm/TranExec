require 'rails_helper'

RSpec.describe "phone_sessions/edit", type: :view do
  before(:each) do
    @phone_session = assign(:phone_session, PhoneSession.create!(
      :client_id => 1,
      :phone_session_type_id => 1,
      :phone => "MyString",
      :reminder => "MyString",
      :email => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit phone_session form" do
    render

    assert_select "form[action=?][method=?]", phone_session_path(@phone_session), "post" do

      assert_select "input#phone_session_client_id[name=?]", "phone_session[client_id]"

      assert_select "input#phone_session_phone_session_type_id[name=?]", "phone_session[phone_session_type_id]"

      assert_select "input#phone_session_phone[name=?]", "phone_session[phone]"

      assert_select "input#phone_session_reminder[name=?]", "phone_session[reminder]"

      assert_select "input#phone_session_email[name=?]", "phone_session[email]"

      assert_select "input#phone_session_user_id[name=?]", "phone_session[user_id]"
    end
  end
end
