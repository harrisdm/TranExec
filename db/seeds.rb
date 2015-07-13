AppointmentBlock.destroy_all
Group.destroy_all
PhoneSessionType.destroy_all
WorkshopType.destroy_all
Client.destroy_all

ab1 = AppointmentBlock.create :code => 'ABC123', :active => true
ab2 = AppointmentBlock.create :code => 'ABC456', :active => false

pst1 = PhoneSessionType.create(:name => 'Phone Session 1')
pst1 = PhoneSessionType.create(:name => 'Phone Session 2')

c1 = Client.create :name => 'Toby'
c2 = Client.create :name => 'Mark'
c3 = Client.create :name => 'Jeff'

wst1 = WorkshopType.create(:name => 'Workshop 1')
wst2 = WorkshopType.create(:name => 'Workshop 2')
wst3 = WorkshopType.create(:name => 'Workshop 3')





g1 = Group.create :company => 'Aldi', :name => "Area Managers"
g2 = Group.create :company => 'Aldi', :name => "Store Managers"
g3 = Group.create :company => 'Rebel Sports', :name => "Store Managers"


