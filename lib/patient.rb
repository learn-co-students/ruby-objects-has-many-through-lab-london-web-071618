class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all
  end

  def doctors
    b = appointments.map{|x| x.doctor}
  end
end

puts "sdasds"
