class BackboneController < ApplicationController
  def index
    @appointment_block = appointment_block_from_code
    render 'pages/backbone'
  end

  def participants
    participants = Participant.all
    render json: participants
  end

  def appointments
    appointment_block = appointment_block_from_code
    render json: appointment_block.participants
  end

  private
  def appointment_block_from_code
    code = params['code']
    AppointmentBlock.find_by :active => true, :code => code
  end
end
