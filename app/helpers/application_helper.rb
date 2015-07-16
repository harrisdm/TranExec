module ApplicationHelper


  def date_string date
    date.strftime("%a, %d %b %Y")    
  end


  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0);", :class => "remove_link")
  end

  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.create
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    id = new_object.object_id
    link_to(name, '#', class: "add_link", data: {class: id, fields: fields.gsub("\n", "")})
  end

  #   def link_to_add_fields(name, f, association)
  #   new_object = f.object.class.reflect_on_association(association).klass.new
  #   fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
  #     render(association.to_s.singularize + "_fields", :f => builder)
  #   end
  #   id = new_object.object_id
  #   link_to(name, '#', class: "add_link", data: {class: id, fields: fields.gsub("\n", "")})
  # end


  def build_ical data

event = 'BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//www.marudot.com//iCal Event Maker
X-WR-CALNAME:9:00
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
END:VTIMEZONE
BEGIN:VEVENT
DTSTAMP:20150715T124010Z
UID:20150715T124010Z-1656919172@marudot.com
DTSTART;TZID="Australia/Sydney":20150716T090000
DTEND;TZID="Australia/Sydney":20150716T100000
SUMMARY:Workshop 1 - Phone Session
DESCRIPTION:Mark Harris\nAldi - Phone Session 2
LOCATION:0402-440-816
END:VEVENT
END:VCALENDAR'


  end

end
