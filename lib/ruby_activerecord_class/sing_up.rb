class SignUp

  def create_user(email)
    user = User.create(email:email)
    add_vehicle(user.id)
    puts "El usuario se registro con exito"
    puts "¿Quieres agendar una cita?"
    @input
    if @input == "si"
      make_appointment
    else

    end
    self
  end

  def start
    "entre"
  end

end