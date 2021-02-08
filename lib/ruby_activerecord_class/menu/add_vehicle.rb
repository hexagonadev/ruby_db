require_relative "../vehicle"
require_relative "../user"

class AddVehicle

  def add_vehicle
    puts 'Ingresa tu usuario:'
    email = gets.chomp
    user = User.find_by(email: email)

    puts 'Por favor indícanos los siguientes datos:
    Marca:'
    vehicle = Vehicle.new
    vehicle.brand = gets.chomp
    puts 'Modelo:'
    vehicle.model = gets.chomp
    puts 'Motor:'
    vehicle.engine_size = gets.chomp
    puts 'Año:'
    vehicle.year = gets.chomp
    puts 'Color:'
    vehicle.color = gets.chomp
    puts 'Placa:'
    vehicle.vin = gets.chomp
    vehicle.user_id = user.id

    vehicle.save

    puts 'Su vehículo fue registrado'

 end
end