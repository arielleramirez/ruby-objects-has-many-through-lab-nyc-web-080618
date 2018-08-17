require 'pry'
class Doctor

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def new_appointment(patient, date)
  Appointment.new(patient, self, date)

  end #new_appointment

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end #appointment.all.select
  end #appointments

  def patients
    appointments.map do |appointment|
      appointment.patient
    end #appointment.all.select
  end #patients



end #doctor
