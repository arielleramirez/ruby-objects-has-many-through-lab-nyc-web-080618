class Patient

  @@all =[]

attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all


  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end #new_appointment

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end #Appontment.map
  end #appointments

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end #appointment.collect
  end #doctors
end #patient
