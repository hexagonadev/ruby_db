class Menu

  def initialize
    @option_1 = CreateUSer.new
    @option_2 = AddVehicle.new
    @option_3 = CreateAppointment.new
  end

  def options_menu
    puts " Bienvenido a tu mecanico de confianza
     Porque sabemos lo valioso que es tu tiempo, puedes agendar una cita y te atenderemos cuando lo desees

     ¿Qué deseas hacer?
     1 = Crear un usuario
     2 = Agregar un vehiculo
     3 = Agendar una cita"
  end
end