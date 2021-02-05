require_relative "../vehicle"
require_relative "../user"

class RegisterVehicle

  def start

    puts "Registro de Vehiculo:"
    ""
    puts "Usuario (email):"
    email = gets.chomp
    puts "Tipo de Vehiculo"
    kind = gets.chomp
    puts "Marca:"
    brand = gets.chomp
    puts "Modelo:"
    model = gets.chomp
    puts "Motor:"
    engine_size = gets.chomp
    puts "Año:"
    year = gets.chomp.to_i
    puts "Color:"
    color = gets.chomp
    puts "Placa:"
    vin = gets.chomp

    user = User.find_by(email: email)

    vehicle = Vehicle.create(brand: "#{brand}", model: "#{model}", engine_size: "#{engine_size}", year: year, color: "#{color}", vin: "#{vin}", kind: "#{kind}", user_id: user.id)

    puts ""
    puts "¡Vehiculo registrado con exito!"
    puts ""
    puts "¿Desea volver al menu?
        SI: 1 / NO: 2"
  end
end