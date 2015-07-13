require 'rails_helper'

RSpec.describe "coaching_sessions/index", type: :view do
  before(:each) do
    assign(:coaching_sessions, [
      CoachingSession.create!(
        :user_id => "User",
        :workshop_id => 1
      ),
      CoachingSession.create!(
        :user_id => "User",
        :workshop_id => 1
      )
    ])
  end

  it "renders a list of coaching_sessions" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
