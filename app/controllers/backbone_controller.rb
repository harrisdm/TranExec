class BackboneController < ApplicationController
  def index
    @appointment_block = appointment_block_from_code

    if @appointment_block
      render 'pages/backbone'
    else
      redirect_to root_path
    end
  end

  def participants
    appointment_block = appointment_block_from_code
    render json: appointment_block.participants
  end

  def appointments
    appointment_block = appointment_block_from_code
    appointments = appointment_block.appointments.order(:datetime)

    render json: appointments
  end

  def make_booking
    appointment = Appointment.find params['id']
    appointment.update appointment_params

    render json: appointment
  end

  private
  def appointment_block_from_code
    code = params['code']
    AppointmentBlock.find_by :active => true, :code => code
  end

  def appointment_params
    params.require(:backbone).permit(:participant_id)
  end
end
