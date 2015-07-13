require 'rails_helper'

RSpec.describe "appointment_blocks/show", type: :view do
  before(:each) do
    @appointment_block = assign(:appointment_block, AppointmentBlock.create!(
      :workshop_id => 1,
      :password_digest => "Password Digest",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/false/)
  end
end
