class Patient
  attr_accessor :names, :doctors, :appointments
  def initialize(name)
    @name =  name
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
    @appointments << new_appt
    @doctors << new_appt.doctor
    return new_appt
  end
end
