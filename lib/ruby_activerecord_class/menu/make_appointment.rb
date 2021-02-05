require_relative "../appointment"
require_relative "../user"
require_relative "../vehicle"


class MakeAppointment

  def start
   puts "Ingrese los siguientes datos para su agendar su cita:"
   puts ""

   puts "Usuario (email):"
   email = gets.chomp
   puts "Indique el motivo de la cita"
   description = gets.chomp
   puts "Indique la fecha para la cita (dd/mm/aa)"
   date = gets.chomp
   puts "Indique la placa de su Vehiculo"
   vin = gets.chomp

   user = User.find_by(email: email)
   vehicle = Vehicle.find_by(vin: vin)

    appointment = Appointment.create(description: "#{description}", appointment_date: date, vehicle_id: vehicle.id, user_id: user.id)

    puts ""
    puts "¡Su cita esta agendada para la fecha: #{date}!"
    puts ""
    puts "¿Desea volver al menu?
        SI: 1 / NO: 2"


  end
end