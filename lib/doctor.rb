class Doctor
  attr_accessor :name, :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appt = Appointment.new(patient, self, date)
    @appointments << new_appt
    @patients << new_appt.patient
    return new_appt
  end
end
