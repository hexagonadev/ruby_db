require_relative "ruby_activerecord_class/appointment"

class CreateAppointment

  def initialize

  end

  def create_appointment_first_time
    puts 'Por favor ingresa tu usuario'
    user = gets.chomp
    find_user = User.find_by(email: user)

  end
end