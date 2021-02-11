require_relative "create_user"
require_relative "add_vehicle"
require_relative "create_appointment"
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

  def initialize
    @option_1 = CreateUser.new
    @option_2 = AddVehicle.new
    @option_3 = CreateAppointment.new
  end

  def choose
    @input = gets.chomp.to_i
  end
end