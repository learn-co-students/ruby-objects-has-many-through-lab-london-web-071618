class Appointment

  attr_accessor :patient, :doctor, :date

#all knows about all appointments that have been created
  @@all = []

#new initializes with a patient, doctor, and date
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    self.class.all << self
  end

  def self.all
    @@all
  end

end
