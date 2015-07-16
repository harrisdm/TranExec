class AppointmentBlocksController < ApplicationController

  def index
    @appointment_blocks = AppointmentBlock.all
  end

  def show
    @appointment_block = AppointmentBlock.find(params[:id])
    @appointments = @appointment_block.appointments
    #raise params.inspect
  end


  def new
    @appointment_block = AppointmentBlock.new
    @session_types = PhoneSessionType.all
  end

  def create
    #raise params.inspect
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
    @appointment_block = AppointmentBlock.find params[:appointment_block_id]

    # @appointment_block.appointments.each do |appointment|
    #   if appointment.participant_id
    #     PhoneSession.create({
    #       :participant_id => appointment.participant_id,
    #       :phone_session_type_id => 1,
    #       :phone => appointment.phone,
    #       :email => appointment.email,
    #       :reminder => appointment.reminder,
    #       :user_id => 0
    #     })
    #   end
    # end

    # @appointment_block.destroy
    
    # cal = "test"
    cal = make_calendar @appointment_block
    send_data cal, :filename => "CalendarExport-#{@appointment_block.name}.ics"
    #render text: cal

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_block
      @appointment_block = AppointmentBlock.find(params[:id])
    end

    def appointment_block_params
      params.require(:appointment_block).permit(:name, :code, :phone_session_type_id, :active)
    end

    def make_calendar appointment_block

      calendar = 'BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//www.marudot.com//iCal Event Maker
CALSCALE:GREGORIAN
BEGIN:VTIMEZONE
TZID:Australia/Sydney
TZURL:http://tzurl.org/zoneinfo-outlook/Australia/Sydney
X-LIC-LOCATION:Australia/Sydney
BEGIN:STANDARD
TZOFFSETFROM:+1100
TZOFFSETTO:+1000
TZNAME:AEST
DTSTART:19700405T030000
RRULE:FREQ=YEARLY;BYMONTH=4;BYDAY=1SU
END:STANDARD
BEGIN:DAYLIGHT
TZOFFSETFROM:+1000
TZOFFSETTO:+1100
TZNAME:AEDT
DTSTART:19701004T020000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=1SU
END:DAYLIGHT
END:VTIMEZONE'

now = to_icalTime(Time.now, true)

appointment_block.appointments.each do |appointment|
  if appointment.participant_id
    start_time = to_icalTime(appointment.datetime, false)
    end_time = to_icalTime(appointment.datetime + 30.minutes, false)
    name = appointment.participant.name
    proj_company = appointment.participant.project.company
    proj_name = appointment.participant.project.name

    #raise params.inspect
    calendar += '
BEGIN:VEVENT
DTSTAMP:' + now + '
UID:' + start_time.to_s + '-' + appointment.id.to_s + '@marudot.com
DTSTART;TZID="Australia/Sydney":' + start_time + '
DTEND;TZID="Australia/Sydney":' + end_time + '
SUMMARY:Phone Session - ' + appointment.participant.name + '
DESCRIPTION:' + name + '\n' + proj_company + ' - ' + proj_name
calendar += '
LOCATION:Phonecall
END:VEVENT'
  end
end

calendar += '
END:VCALENDAR
'
    calendar

    end


  def to_icalTime datetime, z_check
    str = datetime.to_s.split(" ")
    date = str[0].gsub!("-", "")
    time = str[1].gsub!(":", "")
    ical_time = "#{date}T#{time}"
    ical_time = "#{date}T#{time}Z" if z_check

    ical_time
  end
end
