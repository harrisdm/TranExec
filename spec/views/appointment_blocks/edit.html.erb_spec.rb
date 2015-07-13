require 'rails_helper'

RSpec.describe "appointment_blocks/edit", type: :view do
  before(:each) do
    @appointment_block = assign(:appointment_block, AppointmentBlock.create!(
      :workshop_id => 1,
      :password_digest => "MyString",
      :active => false
    ))
  end

  it "renders the edit appointment_block form" do
    render

    assert_select "form[action=?][method=?]", appointment_block_path(@appointment_block), "post" do

      assert_select "input#appointment_block_workshop_id[name=?]", "appointment_block[workshop_id]"

      assert_select "input#appointment_block_password_digest[name=?]", "appointment_block[password_digest]"

      assert_select "input#appointment_block_active[name=?]", "appointment_block[active]"
    end
  end
end
