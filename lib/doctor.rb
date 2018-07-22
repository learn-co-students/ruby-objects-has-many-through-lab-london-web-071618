class Doctor

attr_accessor :name, :appointments

@@all = []

#new initializes with a name and adds itself to an array of all doctors
  def initialize(name)
    @name = name
    @appointments = []
    # @patients = []
    self.class.all << self
  end

  def self.all
    @@all
  end

#new_appointment given a date and a patient, creates a new appointment
  def new_appointment(patient, date)
    x = Appointment.new(patient, self, date)
    @appointments << x
    x
  end
#appointments has many appointments

#patients has many patients, through appointments
  def patients
    self.appointments.collect {|element| element.patient }
  end

end
