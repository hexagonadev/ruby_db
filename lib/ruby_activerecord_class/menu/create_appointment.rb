require_relative "../appointment"
require_relative "../user"
require_relative "../vehicle"

class CreateAppointment

  def appointment
    puts 'Por favor ingresa tu usuario'
    user = gets.chomp
    find_user = User.find_by(email: user)
    appointment.user_id = find_user.id

    puts 'Motivo de la cita:'
    appointment = Appointment.new
    appointment.description = gets.chomp

    puts 'Fecha de la cita (Formato (dd/mm/aa)'
    appointment.appointment_date = gets.chomp

    puts 'Placa de su vehiculo'
    vin = gets.chomp
    vehicle = Vehicle.find_by(vin: vin)
    appointment.vehicle_id = vehicle.id

    appointment.save

    puts 'Cita agendada'

  end
end