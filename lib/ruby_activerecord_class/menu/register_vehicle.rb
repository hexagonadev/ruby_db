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

    user_valid(email)
    date_vehicle

    if @vehicle.save
      puts ""
      puts "¡Vehiculo registrado con exito!
            ¿Desea volver al menu?
            SI: 1 / NO: 2"
    else
      @vehicle.errors.full_messages.each {|message| puts message}
      puts @vehicle.errors.inspect
    end
  end

  def user_valid(email)

    puts user = User.find_by(email: email)

    if user.valid?
      puts user_id = user.id
      @vehicle.user_id
    end
  end

  def date_vehicle
    puts "Tipo de Vehiculo"
    @vehicle.kind = gets.chomp
    puts "Marca:"
    @vehicle.brand = gets.chomp
    puts "Modelo:"
    @vehicle.model = gets.chomp
    puts "Motor:"
    @vehicle.engine_size = gets.chomp
    puts "Año:"
    @vehicle.year = gets.chomp
    puts "Color:"
    @vehicle.color = gets.chomp
    puts "Placa:"
    @vehicle.vin = gets.chomp

  end

end