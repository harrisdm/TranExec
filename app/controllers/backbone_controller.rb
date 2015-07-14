class BackboneController < ApplicationController
  def index
    access_code = params['access_code']
    @appointment_block = AppointmentBlock.find_by :active => true, :code => access_code

    render 'pages/backbone'
  end

  def participants
    participants = Participant.all
    render json: participants
  end
end
