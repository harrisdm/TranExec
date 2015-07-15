class AppointmentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    #raise params.inspect
    appointment_params[:time].each do |time|
      #raise params.inspect
      Appointment.create(:datetime => "#{appointment_params[:date]} #{time}", :appointment_block_id => appointment_params[:appointment_block_id])
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def appointment_params
      params.require(:appointment).permit(:date, {:time => []}, :appointment_block_id)
    end

end
