AppointmentBlock.destroy_all

ab1 = AppointmentBlock.create :code => 'ABC123', :active => true
ab2 = AppointmentBlock.create :code => 'ABC456', :active => false