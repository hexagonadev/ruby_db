require_relative "../user"
require_relative "../vehicle"
require_relative "../appointment"
class Menu
  attr_accessor :input
  attr_reader :option_1, :option_2, :option_3

  def main
    puts "¿Qué deseas hacer?
     1 = Crear un usuario
     2 = Agregar un vehiculo
     3 = Agendar una cita
     4 = Salir"
  end

  def options
    @option_1 = CreateUSer.new.create_user
    @option_2 = AddVehicle.new.add_vehicle
    @option_3 = CreateAppointment.new.appointment
  end

  def choose
    @input = gets.chomp
  end
end