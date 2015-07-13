require 'rails_helper'

RSpec.describe "phone_session_types/show", type: :view do
  before(:each) do
    @phone_session_type = assign(:phone_session_type, PhoneSessionType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
