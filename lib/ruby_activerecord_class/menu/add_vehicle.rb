require_relative "ruby_activerecord_class/vehicle"

class AddVehicle

  def initialize


  end

  def add_vehicle(user)
    puts 'Por favor indícanos los siguientes datos:
    Marca:'
    brand = gets.chomp
    puts 'Modelo:'
    model = gets.chomp
    puts 'Motor:'
    engine_size = gets.chomp
    puts 'Año:'
    year = gets.chomp
    puts 'Color:'
    color = gets.chomp
    puts 'Placa:'
    vin = gets.chomp


    Vehicle.create(brand: brand, model: model, engine_size: engine_size, year: year, color: color, vin: vin, user_id: user.id)
    self
 end
end