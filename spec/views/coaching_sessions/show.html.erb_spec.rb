require 'rails_helper'

RSpec.describe "coaching_sessions/show", type: :view do
  before(:each) do
    @coaching_session = assign(:coaching_session, CoachingSession.create!(
      :user_id => "User",
      :workshop_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/1/)
  end
end
