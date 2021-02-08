require_relative "../vehicle"
require_relative "../user"

class RegisterVehicle

  def initialize
    @vehicle = Vehicle.new
  end
  def start
    puts "Registro de Vehiculo:"
    ""
    puts "Usuario (email):"
    email = gets.chomp
    puts "Tipo de Vehiculo"
    @vehicle.kind = gets.chomp
    puts "Marca:"
    @vehicle.brand = gets.chomp
    puts "Modelo:"
    @vehicle.model = gets.chomp
    puts "Motor:"
    @vehicle.engine_size = gets.chomp
    puts "Año:"
    @vehicle.year = gets.chomp.to_i
    puts "Color:"
    @vehicle.color = gets.chomp
    puts "Placa:"
    @vehicle.vin = gets.chomp

    user = User.find_by(email: email)

    @vehicle.user.id

    if @vehicle.save
      puts ""
      puts "¡Vehiculo registrado con exito!
             ¿Desea volver al menu?
             SI: 1 / NO: 2"
    else
      @vehicle.errors.full_message
      "¿Desea volver al menu? SI: 1 / NO: 2"
    end

  end
end