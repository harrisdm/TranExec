AppointmentBlock.destroy_all

ab1 = AppointmentBlock.create :code => 'abc123', :active => true
ab2 = AppointmentBlock.create :code => 'abc456', :active => false