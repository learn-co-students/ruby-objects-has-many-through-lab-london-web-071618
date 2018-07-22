class Patient

  attr_accessor :name, :appointments

@@all = []

  #new initializes with a name
  def initialize(name)
    @name = name
    @appointments = []
    self.class.all << self
  end

  def self.all
    @@all
  end

# new_appointment given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    x = Appointment.new(self, doctor, date)
    self.appointments << x
    x
  end

  #doctors has many doctors through appointments
  def doctors
    self.appointments.collect {|element| element.doctor }
  end
end
