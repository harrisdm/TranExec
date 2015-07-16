class BackboneController < ApplicationController
  def index
    @appointment_block = appointment_block_from_code

    if @appointment_block
      render 'pages/backbone'
    else
      flash[:alert] = 'Incorrect access code'
      redirect_to root_path
    end
  end

  def participants
    appointment_block = appointment_block_from_code

    already_booked = appointment_block.appointments.pluck(:participant_id)
    participants = appointment_block.participants.where.not(id: already_booked)

    render json: participants
  end

  def appointments
    appointment_block = appointment_block_from_code
    appointments = appointment_block.appointments.order(:datetime)

    render json: appointments
  end

  def make_booking
    appointment_block = appointment_block_from_code

    # Remove old booking
    appointment = appointment_block.appointments.where({
      :participant_id => params[:participant_id]
    })
    appointment.update_all :participant_id => nil

    # Create new booking
    appointment = appointment_block.appointments.find params['id']
    appointment.update appointment_params

    render json: appointment
  end

  private
  def appointment_block_from_code
    code = params['code']
    AppointmentBlock.find_by :active => true, :code => code.upcase
  end

  def appointment_params
    params.require(:backbone).permit(:participant_id, :phone, :email, :reminder)
  end
end
