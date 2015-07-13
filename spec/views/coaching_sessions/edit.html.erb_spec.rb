require 'rails_helper'

RSpec.describe "coaching_sessions/edit", type: :view do
  before(:each) do
    @coaching_session = assign(:coaching_session, CoachingSession.create!(
      :user_id => "MyString",
      :workshop_id => 1
    ))
  end

  it "renders the edit coaching_session form" do
    render

    assert_select "form[action=?][method=?]", coaching_session_path(@coaching_session), "post" do

      assert_select "input#coaching_session_user_id[name=?]", "coaching_session[user_id]"

      assert_select "input#coaching_session_workshop_id[name=?]", "coaching_session[workshop_id]"
    end
  end
end
