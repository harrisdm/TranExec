require 'rails_helper'

RSpec.describe "coaching_sessions/new", type: :view do
  before(:each) do
    assign(:coaching_session, CoachingSession.new(
      :user_id => "MyString",
      :workshop_id => 1
    ))
  end

  it "renders new coaching_session form" do
    render

    assert_select "form[action=?][method=?]", coaching_sessions_path, "post" do

      assert_select "input#coaching_session_user_id[name=?]", "coaching_session[user_id]"

      assert_select "input#coaching_session_workshop_id[name=?]", "coaching_session[workshop_id]"
    end
  end
end
