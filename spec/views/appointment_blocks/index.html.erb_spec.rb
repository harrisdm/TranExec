require 'rails_helper'

RSpec.describe "appointment_blocks/index", type: :view do
  before(:each) do
    assign(:appointment_blocks, [
      AppointmentBlock.create!(
        :workshop_id => 1,
        :password_digest => "Password Digest",
        :active => false
      ),
      AppointmentBlock.create!(
        :workshop_id => 1,
        :password_digest => "Password Digest",
        :active => false
      )
    ])
  end

  it "renders a list of appointment_blocks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
