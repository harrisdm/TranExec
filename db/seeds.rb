AppointmentBlock.destroy_all
Appointment.destroy_all
Project.destroy_all
PhoneSessionType.destroy_all
WorkshopType.destroy_all
Participant.destroy_all
Workshop.destroy_all

pst1 = PhoneSessionType.create(:name => 'Phone Session 1')
pst1 = PhoneSessionType.create(:name => 'Phone Session 2')

wst1 = WorkshopType.create :name => 'Workshop 1'
wst2 = WorkshopType.create :name => 'Workshop 2'
wst3 = WorkshopType.create :name => 'Workshop 3'

u1 = User.create :name => "Rich", :coach => false
u2 = User.create :name => "Karen", :coach => true
u3 = User.create :name => "Sarit", :coach => true


