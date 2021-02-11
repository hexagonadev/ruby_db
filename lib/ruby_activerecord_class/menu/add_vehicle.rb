require_relative "../vehicle"
require_relative "../user"

class AddVehicle

  def add_vehicle
    puts 'Ingresa tu usuario:'
    email = gets.chomp
    user = User.find_by(email: email)
    if user.valid?

    puts 'Por favor indícanos los siguientes datos:
    Marca:'
    vehicle = Vehicle.new
    vehicle.user_id = user.id
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


    loop do
    if vehicle.save
      puts 'Su vehículo fue registrado'
      raise StopIteration
    else
      puts vehicle.errors.full_messages
      puts 'Placa:'
      vehicle.vin = gets.chomp
    end
    end
 end

end