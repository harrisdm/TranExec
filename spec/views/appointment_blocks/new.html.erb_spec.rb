require 'rails_helper'

RSpec.describe "appointment_blocks/new", type: :view do
  before(:each) do
    assign(:appointment_block, AppointmentBlock.new(
      :workshop_id => 1,
      :password_digest => "MyString",
      :active => false
    ))
  end

  it "renders new appointment_block form" do
    render

    assert_select "form[action=?][method=?]", appointment_blocks_path, "post" do

      assert_select "input#appointment_block_workshop_id[name=?]", "appointment_block[workshop_id]"

      assert_select "input#appointment_block_password_digest[name=?]", "appointment_block[password_digest]"

      assert_select "input#appointment_block_active[name=?]", "appointment_block[active]"
    end
  end
end
