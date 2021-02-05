
class MakeAppointment
  puts "Ingrese su email"
  user = gets.chomp
  find_user = User.fin_by(email: user)
  puts "Ingrese placa de vehiculo"

end