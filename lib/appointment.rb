class Appointment


  attr_accessor :doctor, :date, :patient
  @@all = []

def initialize(patient, doctor, date)
  @doctor = doctor
  @patient = patient
  @date = date
  @@all << self
end #initialize

  def self.all
    @@all
  end #self.all
end #appointment
