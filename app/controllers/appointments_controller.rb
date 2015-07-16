class AppointmentsController < ApplicationController
  before_action :authorize_user

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
    #raise params.inspect
    redirect_to appointment_block_path(params[:appointment_block_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def appointment_params
      # :time is declared diffently from usual to allow an array of values
      params.require(:appointment).permit(:date, {:time => []}, :appointment_block_id)
    end

end
