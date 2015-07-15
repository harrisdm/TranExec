AppointmentBlock.destroy_all
Appointment.destroy_all
Project.destroy_all
PhoneSessionType.destroy_all
WorkshopType.destroy_all
Participant.destroy_all
Workshop.destroy_all

pst1 = PhoneSessionType.create(:name => 'Phone Session 1')
pst1 = PhoneSessionType.create(:name => 'Phone Session 2')

pr1 = Participant.create :name => 'Toby', :project_id => 1
pr2 = Participant.create :name => 'Mark', :project_id => 1
pr3 = Participant.create :name => 'Jeff', :project_id => 1

wst1 = WorkshopType.create :name => 'Workshop 1'
wst2 = WorkshopType.create :name => 'Workshop 2'
wst3 = WorkshopType.create :name => 'Workshop 3'

# u1 = User.create :name => "Rich", :coach => false
# u2 = User.create :name => "Karen", :coach => true
# u3 = User.create :name => "Sarit", :coach => true

p1 = Project.create :company => 'Aldi', :name => "Area Managers"
p2 = Project.create :company => 'Aldi', :name => "Store Managers"
p3 = Project.create :company => 'Rebel Sports', :name => "Store Managers"

ws1 = Workshop.create :datetime => "2015-7-12 9:00:00", :location => "Sydney!", :workshop_type_id => 1, :project_id => 1
ws1.participants << pr1 << pr2 << pr3

ws2 = Workshop.create :datetime => "2015-7-20 9:00:00", :location => "Sydney", :workshop_type_id => 2, :project_id => 1
ws3 = Workshop.create :datetime => "2015-7-26 9:00:00", :location => "Sydney", :workshop_type_id => 3, :project_id => 1
ws4 = Workshop.create :datetime => "2015-7-15 9:00:00", :location => "Melbourne", :workshop_type_id => 1, :project_id => 3
ws4 = Workshop.create :datetime => "2015-7-16 9:00:00", :location => "Melbourne", :workshop_type_id => 1, :project_id => 3
ws5 = Workshop.create :datetime => "2015-8-2 9:00:00", :location => "Melbourne", :workshop_type_id => 2, :project_id => 3

a1 = Appointment.create :datetime => '2015-07-16 2:30'
a2 = Appointment.create :datetime => '2015-07-14 3:30'
a3 = Appointment.create :datetime => '2015-07-15 4:30'

ab1 = AppointmentBlock.create :name => 'Test', :code => 'ABC123', :active => true, :phone_session_type_id => 1
ab1.appointments << a1 << a2 << a3
ws1.update :appointment_block_id => ab1.id

ab2 = AppointmentBlock.create :code => 'ABC456', :active => true




