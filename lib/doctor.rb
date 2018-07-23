class Doctor

attr_accessor :name, :data, :patient

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment
    new_appointment = Appointment.new(data, patient)
  end

end
