require_relative 'user'
require_relative 'profile'
require_relative 'vehicle'
require_relative  'appointments'

class Menu
  def self.show

  end

  def initialize
    @input = gets.chomp

  end

  def options_menu
    puts " Bienvenido a tu mecanico de confianza

     ¿Qué deseas hacer?
     1 = Crear un usuario
     2 = Agregar un vehiculo
     3 = Agendar una cita"
  end

  def create_user(email)
    user = User.create(email: email)
    self
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

  def create_appointment_first_time
    puts 'Por favor ingresa tu usuario'
    user = gets.chomp
    find_user = User.find_by(email: user)

  end

  def create_appointment(user)

  end

end