class AppointmentBlocksController < ApplicationController

  def index
    @appointment_blocks = AppointmentBlock.all
  end

  def show
    @appointment_block = AppointmentBlock.find(params[:id])
  end


  def new
    @appointment_block = AppointmentBlock.new
    @session_types = PhoneSessionType.all
  end

  def create
    raise params.inspect
    @appointment_block = AppointmentBlock.new(appointment_block_params)

    if @appointment_block.save
      redirect_to @appointment_block, notice: 'Appointment block was successfully created.'
    else
      render :new
    end
  end



  def edit
    @appointment_block = AppointmentBlock.find(params[:id])
    @session_types = PhoneSessionType.all
  end

  def update
    @appointment_block = AppointmentBlock.find(params[:id])

    if @appointment_block.update(appointment_block_params)
      redirect_to @appointment_block, notice: 'Appointment block was successfully updated.'
    else
      render :edit
    end
  end



  def destroy
    @appointment_block = AppointmentBlock.find(params[:id])
    @appointment_block.destroy
    redirect_to appointment_blocks_url, notice: 'Appointment block was successfully destroyed.'
  end

  def export
    appointment_block = AppointmentBlock.find params[:appointment_block_id]

    appointment_block.appointments.each do |appointment|
      if appointment.participant_id
        PhoneSession.create({
          :participant_id => appointment.participant_id,
          :phone_session_type_id => 1,
          :phone => appointment.phone,
          :email => appointment.email,
          :reminder => appointment.reminder,
          :user_id => 0
        })
      end
    end

    appointment_block.destroy

    render text: 'done'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_block
      @appointment_block = AppointmentBlock.find(params[:id])
    end

    def appointment_block_params
      params.require(:appointment_block).permit(:name, :code, :phone_session_type_id, :active)
    end
end
