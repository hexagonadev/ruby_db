require_relative 'user'
require_relative 'profile'
require_relative 'vehicle'
require_relative  'appointments'

class Menu
  def self.show

  def initialize
    @input = gets.chomp

  end

  def options_menu
    puts " Bienvenido a tu mecanico de confianza
     Porque sabemos lo valioso que es tu tiempo, puedes agendar una cita y te atenderemos cuando lo desees

     ¿Qué deseas hacer?
     1 = Crear un usuario
     2 = Agregar un vehiculo
     3 = Agendar una cita"
  end

  def create_user(email)
    user = User.create(email: "#{email}")
    add_vehicle(user.id)
    puts '¿Quieres agendar una cita?'
    @input
    if @input == "si"
      create_appointment
    else

    end
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
     user_id = user

     Vehicle.create(brand: brand, model: model, engine_size: engine_size, year: year, color: color, vin: vin, user_id: user_id)
     self
  end

  def create_appointment_first_time
    puts 'Por favor ingresa tu usuario'
    user = gets.chomp
    find_user = User.find_by(email: user)
    puts "¿Es #{find_user.email} tu usuario?"
    @input
    if @input == "si"
      create_appointment(find_user.id)
    else
      puts 'ingrese su usuario'
      user_1 = gets.chomp
      find_user_1 = User.find_by(email: user)

  end

  def create_appointment(user)

  end

end