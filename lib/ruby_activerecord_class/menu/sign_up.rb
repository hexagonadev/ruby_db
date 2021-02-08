require_relative "../user"

class SignUp


  def start
    user = User.new
    puts "Ingrese su email:"
    user.email = gets.chomp

    if user.save
      puts ""
      puts "Bienvenid@, usuario creado con exito
            ¿Quiere registar su vehiculo? SI: 1 / NO: 2"
    else
      user.errors.full_message
     "¿Desea volver al menu? SI: 1 / NO: 2"
    end
  end
end